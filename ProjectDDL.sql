--Restaurant XX Database DDL 
--Please uncomment line below if you need to set search path to desired schema/database-JA
--set search_path to public;
--Drop Statements
--Drop Sequences
DROP SEQUENCE IF EXISTS customer_id_seq;
DROP SEQUENCE IF EXISTS order_id_seq;
DROP SEQUENCE IF EXISTS dine_id_seq;
DROP SEQUENCE IF EXISTS togo_id_seq;
DROP SEQUENCE IF EXISTS item_id_seq;
--Drop Views
DROP VIEW IF EXISTS HIGH_SPENDERS;
--Drop Indices
DROP INDEX IF EXISTS CUS_Phone;
DROP INDEX IF EXISTS CUS_Name;
--Drop Table Statements
DROP TABLE IF EXISTS Order_Line CASCADE;
DROP TABLE IF EXISTS Item CASCADE;
DROP TABLE IF EXISTS Togo_Order CASCADE;
DROP TABLE IF EXISTS DineIn_Order CASCADE;
DROP TABLE IF EXISTS Orders CASCADE;
DROP TABLE IF EXISTS Customer CASCADE;

--Create Tables
CREATE TABLE Customer (
	customer_id 	INTEGER,
	First_Name 		VARCHAR(25) NOT NULL,
	Last_Name 		VARCHAR(25) NOT NULL,
	Address			VARCHAR,
	Payment_Info 	VARCHAR,
	Phone			VARCHAR(15),
	CONSTRAINT PK_customer_id PRIMARY KEY(customer_id)
	
);

CREATE TABLE Orders (
	order_id 	 INTEGER,
	customer_id  INTEGER NOT NULL,
	togo 		 BOOLEAN NOT NULL,
	order_total  NUMERIC (9,2) DEFAULT 0.00,
	CONSTRAINT PK_order_id PRIMARY KEY(order_id),
	CONSTRAINT FK_Orders_customer_id FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE DineIn_Order (
	dine_id		 INTEGER,
	order_id 	 INTEGER NOT NULL,
	table_no 	 INTEGER NOT NULL,
	guest_count  INTEGER NOT NULL,
	reservation	 BOOLEAN,
	time_ordered TIMESTAMP,
	CONSTRAINT PK_dine_id PRIMARY KEY(dine_id),
	CONSTRAINT FK_Dine_order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Togo_Order (
	togo_id		 INTEGER,
	order_id 	 INTEGER NOT NULL,
	pickup 		 BOOLEAN NOT NULL,
	delivery 	 BOOLEAN NOT NULL,
	time_ordered TIMESTAMP,
	time_ready   TIMESTAMP,
	CONSTRAINT PK_togo_id PRIMARY KEY(togo_id),
	CONSTRAINT FK_togo_order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Item (
	Item_id 	INTEGER,
	Item_Name 	VARCHAR NOT NULL,
	Price 		NUMERIC (9,2) NOT NULL,
	Description VARCHAR,
	Item_Type 	VARCHAR NOT NULL,
	CONSTRAINT PK_item_id PRIMARY KEY(Item_id),
	CONSTRAINT UniqItem UNIQUE (Item_Name),
	--Check Contstraint
	CONSTRAINT Item_CK1 CHECK (Price > 0)
);

CREATE TABLE Order_Line (
	order_id	INTEGER,
	line_num  	INTEGER,
	item_id 	INTEGER NOT NULL,
	item_qty  	INTEGER NOT NULL,
	line_price 	NUMERIC (9,2) NOT NULL,
	PRIMARY KEY(order_id,line_num),
	CONSTRAINT FK_Line_Order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	CONSTRAINT FK_Line_Item_id FOREIGN KEY (item_id) REFERENCES Item(item_id),
	CONSTRAINT UniqLine UNIQUE(order_id, item_id)
);


-- Create Sequences
CREATE SEQUENCE customer_id_seq;
CREATE SEQUENCE order_id_seq;
CREATE SEQUENCE dine_id_seq;
CREATE SEQUENCE togo_id_seq;
CREATE SEQUENCE item_id_seq;

-- Create Triggers
-- Create Trigger for Customer ID
CREATE OR REPLACE FUNCTION set_customer_id_function()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.customer_id IS NULL THEN
        NEW.customer_id := nextval('customer_id_seq');
    END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_customer_id_trigger
BEFORE INSERT ON customer
FOR EACH ROW
EXECUTE FUNCTION set_customer_id_function();

--Create Trigger for Order ID
CREATE OR REPLACE FUNCTION set_order_id_function()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.order_id IS NULL THEN
        NEW.order_id := nextval('order_id_seq');
    END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_order_id_trigger
BEFORE INSERT ON orders
FOR EACH ROW
EXECUTE FUNCTION set_order_id_function();

-- Create Trigger for Dine ID
CREATE OR REPLACE FUNCTION set_dine_id_function()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.dine_id IS NULL THEN
        NEW.dine_id := nextval('dine_id_seq');
    END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_dine_id_trigger
BEFORE INSERT ON DineIn_Order
FOR EACH ROW
EXECUTE FUNCTION set_dine_id_function();

-- Create Trigger for Togo ID
CREATE OR REPLACE FUNCTION set_togo_id_function()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.togo_id IS NULL THEN
        NEW.togo_id := nextval('togo_id_seq');
    END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_togo_id_trigger
BEFORE INSERT ON Togo_Order
FOR EACH ROW
EXECUTE FUNCTION set_togo_id_function();

-- Create Trigger for Item ID
CREATE OR REPLACE FUNCTION set_item_id_function()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.item_id IS NULL THEN
        NEW.item_id := nextval('item_id_seq');
    END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_item_id_trigger
BEFORE INSERT ON Item
FOR EACH ROW
EXECUTE FUNCTION set_item_id_function();

--Create Trigger to calculate Order Total from Order Lines
CREATE OR REPLACE FUNCTION calc_order_total_function()
RETURNS TRIGGER AS $$
DECLARE
	Line_total NUMERIC (9,2) := 0;
BEGIN
	Line_total:= (NEW.line_price * NEW.item_qty);
	
	UPDATE Orders
	SET order_total = order_total + Line_total
	WHERE orders.order_id= NEW.order_id;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER calc_order_total_trigger
AFTER INSERT ON Order_Line
FOR EACH ROW
EXECUTE FUNCTION calc_order_total_function();
--Create Indexes
CREATE UNIQUE INDEX CUS_Phone on Customer(Phone);
CREATE INDEX CUS_Name on Customer(Last_Name,First_Name);
--Create View
--View shows customers who spend over 50 dollars on an order
CREATE VIEW HIGH_SPENDERS AS 
SELECT 
	c.first_name,
	c.last_name,
	o.order_total
FROM Customer c 
JOIN Orders o 
on c.customer_id=o.customer_id
WHERE o.order_total > 50
GROUP BY c.customer_id, o.order_total;