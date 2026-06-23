SELECT
    product_category_name_english,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM master_dataset
GROUP BY product_category_name_english
ORDER BY total_revenue DESC
LIMIT 10;