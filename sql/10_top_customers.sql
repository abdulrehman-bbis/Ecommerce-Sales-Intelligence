SELECT
    customer_unique_id,
    ROUND(SUM(revenue),2) AS total_spent
FROM master_dataset
GROUP BY customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;