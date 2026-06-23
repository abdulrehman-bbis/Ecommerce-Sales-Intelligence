SELECT
    customer_unique_id,

    ROUND(
        SUM(revenue),
        2
    ) AS total_spent,

    RANK()
    OVER(
        ORDER BY SUM(revenue) DESC
    ) AS customer_rank

FROM master_dataset

GROUP BY customer_unique_id

LIMIT 20;