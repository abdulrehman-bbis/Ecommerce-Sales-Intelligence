SELECT
    ROUND(
        SUM(revenue)
        /
        COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM master_dataset;