SELECT
    customer_state,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM master_dataset
GROUP BY customer_state
ORDER BY total_revenue DESC
LIMIT 10;