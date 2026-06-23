SELECT
    ROUND(
        AVG(delivery_days),
        2
    ) AS average_delivery_days
FROM master_dataset;