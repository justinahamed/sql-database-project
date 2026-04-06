--Restaurant XX Database Queries
--Please uncomment line below if you need to set search path to desired schema/database-JA
--set search_path to public;
--Query 1- Finding the most popular 'Main' items and their quantities sold 
select 
i.item_name,
sum(ol.item_qty)
from customer c
left join orders o
on c.customer_id=o.customer_id
left join order_line ol
on o.order_id=ol.order_id
left join item i
on ol.item_id = i.item_id
where i.item_type = 'Main'
group by i.item_name
order by sum(ol.item_qty) DESC;
--Query 2- Finding the top spending customer(s) and how much they spent in total for the month of August
select 
c.customer_id,
c.first_name,
c.last_name,
sum(o.order_total)
from orders o
left join customer c
on o.customer_id=c.customer_id
left join dinein_order d
on o.order_id=d.order_id
left join togo_order t
on o.order_id= t.order_id
where extract (month from d.time_ordered)= 08 or extract (month from t.time_ordered)= 08
group by c.customer_id
order by sum(o.order_total) DESC;
/*
--VIEWS and INDEX were created in DDL, but I'll also add the code in here albeit commented out 
since the Project pdf mentioned including it in the queries document
--Drop Views
DROP VIEW IF EXISTS HIGH_SPENDERS;
--Drop Indices
DROP INDEX IF EXISTS CUS_Phone;
DROP INDEX IF EXISTS CUS_Name;
--Create Indexes
CREATE UNIQUE INDEX CUS_Phone on Customer(Phone);
CREATE INDEX CUS_Name on Customer(Last_Name,First_Name);
--Create View 
--View Shows customers who spend over 50 dollars on an order
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
select * from HIGH_SPENDERS;
*/