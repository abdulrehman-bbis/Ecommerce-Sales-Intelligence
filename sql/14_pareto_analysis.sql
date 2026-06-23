SELECT
    customer_state,
    customer_unique_id,

    ROUND(
        SUM(revenue),
        2
    ) AS total_spent,

    DENSE_RANK()
    OVER(
        PARTITION BY customer_state
        ORDER BY SUM(revenue) DESC
    ) AS state_rank

FROM master_dataset

GROUP BY
    customer_state,
    customer_unique_id

ORDER BY
    customer_state,
    state_rank;