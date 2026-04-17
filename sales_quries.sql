create database amazon_db;
use amazon_db;
SELECT 
    category,
    ROUND(SUM(discounted_price), 2) AS total_revenue,
    COUNT(*) AS total_products
FROM amazon_sales
GROUP BY category
ORDER BY total_revenue DESC;
SELECT 
    category, 
    ROUND(AVG(rating), 2) AS average_rating, 
    SUM(rating_count) AS total_reviews
FROM amazon_sales
GROUP BY category
ORDER BY average_rating DESC;
SELECT 
    CASE 
        WHEN discount_percentage < 30 THEN 'Low Discount (0-30%)'
        WHEN discount_percentage BETWEEN 30 AND 60 THEN 'Medium Discount (30-60%)'
        ELSE 'High Discount (60%+)'
    END AS discount_bracket,
    ROUND(AVG(rating), 2) AS avg_rating,
    COUNT(*) AS product_count
FROM amazon_sales
GROUP BY discount_bracket
ORDER BY avg_rating DESC;
SELECT product_name, rating, rating_count, actual_price
FROM amazon_sales
WHERE rating >= 4.5 AND rating_count > 1000
ORDER BY rating_count DESC;
SELECT 
    product_name, 
    category, 
    rating, 
    rating_count
FROM amazon_sales
WHERE rating < 3.5 AND rating_count < 200
ORDER BY rating ASC;
SELECT product_name, review_title
FROM amazon_sales
WHERE review_title LIKE '%Value for money%' 
   OR review_title LIKE '%Quality%'
LIMIT 10;
SELECT 
    product_name, 
    actual_price, 
    discounted_price, 
    (actual_price - discounted_price) AS amount_saved,
    discount_percentage
FROM amazon_sales
ORDER BY amount_saved DESC
LIMIT 10;