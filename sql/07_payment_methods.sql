SELECT
    payment_type,
    COUNT(*) AS total_transactions
FROM master_dataset
GROUP BY payment_type
ORDER BY total_transactions DESC;