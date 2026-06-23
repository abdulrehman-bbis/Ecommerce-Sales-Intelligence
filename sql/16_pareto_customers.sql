WITH customer_sales AS
(
    SELECT
        customer_unique_id,
        SUM(revenue) AS total_revenue

    FROM master_dataset

    GROUP BY customer_unique_id
),

ranked_customers AS
(
    SELECT
        customer_unique_id,
        total_revenue,

        SUM(total_revenue)
        OVER(
            ORDER BY total_revenue DESC
        ) AS running_revenue

    FROM customer_sales
)

SELECT
    customer_unique_id,

    ROUND(total_revenue,2) AS total_revenue,

    ROUND(
        running_revenue
        *100.0
        /
        (
            SELECT SUM(total_revenue)
            FROM customer_sales
        ),
        2
    ) AS cumulative_percentage

FROM ranked_customers;