-- Query 1: Total Revenue

SELECT
SUM(payment_value) AS TotalRevenue
FROM order_payments;

------------------------------------------------

-- Query 2: Revenue by State

SELECT
c.customer_state,
SUM(op.payment_value) AS Revenue
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN order_payments op
ON o.order_id=op.order_id
GROUP BY c.customer_state
ORDER BY Revenue DESC;

------------------------------------------------

-- Query 3: Top Product Categories

SELECT TOP 10
ct.product_category_name_english,
COUNT(*) AS Sales
FROM order_items oi
JOIN products p
ON oi.product_id=p.product_id
JOIN category_translation ct
ON p.product_category_name=ct.product_category_name
GROUP BY ct.product_category_name_english
ORDER BY Sales DESC;

------------------------------------------------

-- Query 4: Top Sellers

SELECT TOP 10
seller_id,
SUM(price) AS Revenue
FROM order_items
GROUP BY seller_id
ORDER BY Revenue DESC;

------------------------------------------------

-- Query 5: Payment Methods

SELECT
payment_type,
COUNT(*) AS Transactions
FROM order_payments
GROUP BY payment_type
ORDER BY Transactions DESC;

------------------------------------------------

-- Query 6: Review Score Distribution

SELECT
review_score,
COUNT(*) AS Reviews
FROM order_reviews
GROUP BY review_score
ORDER BY review_score;

------------------------------------------------

-- Query 7: Average Delivery Time

SELECT
AVG(
DATEDIFF(
DAY,
order_purchase_timestamp,
order_delivered_customer_date
)
) AS AvgDeliveryDays
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;

------------------------------------------------

-- Query 8: Orders by State

SELECT
c.customer_state,
COUNT(*) AS OrdersCount
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_state
ORDER BY OrdersCount DESC;

------------------------------------------------

-- Query 9: Most Expensive Categories

SELECT TOP 10
ct.product_category_name_english,
AVG(oi.price) AS AvgPrice
FROM products p
JOIN order_items oi
ON p.product_id=oi.product_id
JOIN category_translation ct
ON p.product_category_name=ct.product_category_name
GROUP BY ct.product_category_name_english
ORDER BY AvgPrice DESC;

------------------------------------------------

-- Query 10: Monthly Revenue Trend

SELECT
FORMAT(order_purchase_timestamp,'yyyy-MM') AS Month,
SUM(payment_value) AS Revenue
FROM orders o
JOIN order_payments op
ON o.order_id=op.order_id
GROUP BY FORMAT(order_purchase_timestamp,'yyyy-MM')
ORDER BY Month;

------------------------------------------------

-- Query 11: Top Seller States

SELECT
seller_state,
COUNT(*) AS Sellers
FROM sellers
GROUP BY seller_state
ORDER BY Sellers DESC;

------------------------------------------------

-- Query 12: Customer Satisfaction by State

SELECT
c.customer_state,
AVG(r.review_score) AS AvgReview
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN order_reviews r ON o.order_id=r.order_id
GROUP BY c.customer_state
ORDER BY AvgReview DESC;

------------------------------------------------

-- Query 13: Late Deliveries

SELECT
COUNT(*) AS LateOrders
FROM orders
WHERE order_delivered_customer_date >
order_estimated_delivery_date;

