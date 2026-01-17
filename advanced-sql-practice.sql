select * from customers;
select * from orders;

-- Join Query
SELECT *
FROM orders INNER JOIN customers
ON orders.id = customers.id;

-- Group By Query using Having and sub querries
SELECT SUM(total_amount), order_date, count(*)
FROM orders
GROUP BY order_date
HAVING SUM(total_amount) > 200.00
ORDER BY count(order_date) DESC;

-- Where Query
SELECT * FROM customers
WHERE last_name = "Smith";

-- Sub Query with ordering
SELECT *
FROM customers
WHERE id IN (
    SELECT customer_id 
    FROM orders
)
ORDER BY id DESC;