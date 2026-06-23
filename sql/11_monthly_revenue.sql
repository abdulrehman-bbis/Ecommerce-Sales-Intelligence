SELECT
    strftime('%Y-%m', order_purchase_timestamp) AS month,
    ROUND(SUM(revenue), 2) AS monthly_revenue
FROM master_dataset
GROUP BY month
ORDER BY month;