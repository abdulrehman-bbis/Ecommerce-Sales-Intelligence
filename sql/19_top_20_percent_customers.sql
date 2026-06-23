WITH ranked_customers AS
(
    SELECT

        customer_unique_id,

        SUM(revenue) AS total_revenue,

        NTILE(5)
        OVER(
            ORDER BY SUM(revenue) DESC
        ) AS customer_group

    FROM master_dataset

    GROUP BY customer_unique_id
)

SELECT *

FROM ranked_customers

WHERE customer_group = 1;