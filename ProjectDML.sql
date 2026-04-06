--Restaurant XX Database DML 
--Please uncomment line below if you need to set search path to desired schema/database
--set search_path to public;
--Insert Statements 
--Insert Statements for Customer Table
INSERT INTO CUSTOMER (customer_id, First_Name, Last_Name, Address, Payment_Info, Phone)
VALUES (NEXTVAL('customer_id_seq'), 'John', 'Smith', '1512 E Park Blvd, Plano, TX 75074', 'Card', '123-456-7890');
INSERT INTO CUSTOMER (customer_id, First_Name, Last_Name, Address, Payment_Info, Phone)
VALUES (NEXTVAL('customer_id_seq'), 'Jacob', 'Doe', '1429 Coffeyville Trl, Plano, TX 75023', 'Cash', '123-457-7879');
INSERT INTO CUSTOMER (customer_id, First_Name, Last_Name, Address, Payment_Info, Phone)
VALUES (NEXTVAL('customer_id_seq'), 'Jane', 'West', '913 Seabrook Dr, Plano, TX 75023', 'Card', '123-459-7790');
INSERT INTO CUSTOMER (customer_id, First_Name, Last_Name, Address, Payment_Info, Phone)
VALUES (NEXTVAL('customer_id_seq'), 'Karen', 'Phillips', '2713 14th St, Plano, TX 75074', 'Card', '123-457-7567');
INSERT INTO CUSTOMER (customer_id, First_Name, Last_Name, Address, Payment_Info, Phone)
VALUES (NEXTVAL('customer_id_seq'), 'Grant', 'Hills', '3609 Dandelion Dr, Plano, TX 75093', 'Cash', '123-456-8670');

--Insert Statments for Item Table
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Sprite', 1.59, 'Soft Drink', 'Beverage');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Coke', 1.59,'Soft Drink', 'Beverage');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Dr. Pepper', 1.50, 'Soft Drink', 'Beverage');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Sweet Tea', 2.19, 'Tea', 'Beverage');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Lemonade', 1.89, 'Juice', 'Beverage');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Burger', 5.99, 'Beef', 'Main');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Double Burger',6.39, 'Beef', 'Main');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Chicken Burger', 5.09, 'Chicken', 'Main');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Cheeseburger', 2.39, 'Beef', 'Main');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Fish Burger', 3.89, 'Fish', 'Main');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Veggie Burger', 5.30, 'Vegetarian', 'Main');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'), 'Fries', 2.29, 'French fries', 'Side');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'),'Mashed Potatoes & Gravy', 2.50, 'Beef Gravy', 'Side');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'), 'Corn', 2.00, 'Steamed Vegetable', 'Side');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'), 'Corn Dog', 3.50, 'Fried Battered Beef Hot Dog', 'Side');
INSERT INTO Item (Item_id, Item_Name, Price, Description, Item_Type)
VALUES (NEXTVAL('item_id_seq'), 'Hash Brown', 2.80, 'Thin-sliced Fried Potato Aggregate', 'Side');

--Insert Statements for Orders Table
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 1, 'yes');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 2, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 3, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 4, 'yes');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 5, 'yes');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 3, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 4, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 2, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 3, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 3, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 4, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 5, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 3, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 4, 'no');
INSERT INTO Orders (order_id, customer_id, togo)
VALUES (NEXTVAL('order_id_seq'), 4, 'yes');

--Insert Statements for Order_Line
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (1, 1, 6, 3, 5.99);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (1, 2, 13, 3, 2.50);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (1, 3, 3, 2, 1.50);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (1, 4, 5, 1, 1.89);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (2, 1, 10, 1, 3.89);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (2, 2, 15, 1, 3.50);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (2, 3, 5, 1, 1.89);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (3, 1, 8, 1, 5.09);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (3, 2, 16, 1, 2.80);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (3, 3, 1, 1, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (4, 1, 11, 20, 5.30);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (4, 2, 14, 20, 2.00);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (4, 3, 4, 20, 2.19);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (5, 1, 7, 2, 6.39);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (5, 2, 12, 2, 2.29);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (5, 3, 2, 2, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (6, 1, 7, 1, 6.39);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (6, 2, 12, 1, 2.29);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (6, 3, 2, 1, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (7, 1, 7, 2, 6.39);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (7, 2, 12, 2, 2.29);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (7, 3, 2, 2, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (8, 1, 10, 1, 3.89);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (8, 2, 15, 1, 3.50);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (8, 3, 5, 1, 1.89);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (9, 1, 8, 1, 5.09);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (9, 2, 16, 1, 2.80);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (9, 3, 1, 1, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (10, 1, 7, 1, 6.39);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (10, 2, 12, 1, 2.29);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (10, 3, 2, 1, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (11, 1, 7, 2, 6.39);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (11, 2, 12, 2, 2.29);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (11, 3, 2, 2, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (12, 1, 6, 3, 5.99);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (12, 2, 13, 3, 2.50);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (12, 3, 3, 2, 1.50);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (12, 4, 5, 1, 1.89);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (13, 1, 11, 15, 5.30);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (13, 2, 14, 15, 2.00);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (13, 3, 4, 15, 2.19);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (14, 1, 7, 2, 6.39);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (14, 2, 12, 2, 2.29);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (14, 3, 2, 2, 1.59);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (15, 1, 7, 1, 6.39);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (15, 2, 12, 1, 2.29);
INSERT INTO Order_Line (order_id, line_num, item_id, item_qty, line_price)
VALUES (15, 3, 2, 1, 1.59);

--Insert Statements for DineIn_Order
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),2, 1, 1, 'no', TO_TIMESTAMP('10-Aug-2025 10:15:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),3, 2, 1, 'yes', TO_TIMESTAMP('10-Aug-2025 11:15:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),6, 1, 1, 'no', TO_TIMESTAMP('11-Aug-2025 10:15:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),7, 2, 2, 'no', TO_TIMESTAMP('11-Aug-2025 10:17:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),8, 1, 1, 'no', TO_TIMESTAMP('12-Aug-2025 10:15:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),9, 2, 1, 'yes', TO_TIMESTAMP('12-Aug-2025 10:25:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),10, 1, 1, 'yes', TO_TIMESTAMP('12-Aug-2025 10:35:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),11, 2, 2, 'yes', TO_TIMESTAMP('12-Aug-2025 10:47:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),12, 2, 1, 'yes', TO_TIMESTAMP('12-Sep-2025 10:25:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),13, 1, 5, 'yes', TO_TIMESTAMP('12-Sep-2025 10:35:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO DineIn_Order (dine_id, order_id, table_no, guest_count, reservation, time_ordered)
VALUES (NEXTVAL('dine_id_seq'),14, 2, 2, 'yes', TO_TIMESTAMP('12-Sep-2025 10:47:00','DD-Mon-YYYY HH24:MI:SS'));

--Insert Statements for Togo_Order
INSERT INTO Togo_Order (togo_id, order_id, pickup, delivery, time_ordered, time_ready)
VALUES (NEXTVAL('togo_id_seq'), 1,'yes', 'no', TO_TIMESTAMP('10-Aug-2025 10:25:00','DD-Mon-YYYY HH24:MI:SS'), TO_TIMESTAMP('10-Aug-2025 10:30:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO Togo_Order (togo_id, order_id, pickup, delivery, time_ordered, time_ready)
VALUES (NEXTVAL('togo_id_seq'), 4,'no', 'yes', TO_TIMESTAMP('10-Aug-2025 10:35:00','DD-Mon-YYYY HH24:MI:SS'), TO_TIMESTAMP('10-Aug-2025 10:45:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO Togo_Order (togo_id, order_id, pickup, delivery, time_ordered, time_ready)
VALUES (NEXTVAL('togo_id_seq'), 5,'no', 'yes', TO_TIMESTAMP('10-Aug-2025 10:45:00','DD-Mon-YYYY HH24:MI:SS'), TO_TIMESTAMP('10-Aug-2025 10:50:00','DD-Mon-YYYY HH24:MI:SS'));
INSERT INTO Togo_Order (togo_id, order_id, pickup, delivery, time_ordered, time_ready)
VALUES (NEXTVAL('togo_id_seq'), 15,'yes', 'no', TO_TIMESTAMP('12-Sep-2025 10:55:00','DD-Mon-YYYY HH24:MI:SS'), TO_TIMESTAMP('12-Sep-2025 11:00:00','DD-Mon-YYYY HH24:MI:SS'));