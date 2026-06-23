WITH customer_sales AS
(
    SELECT
        customer_unique_id,
        SUM(revenue) AS total_revenue

    FROM master_dataset

    GROUP BY customer_unique_id
)

SELECT
    customer_unique_id,

    ROUND(total_revenue,2) AS total_revenue,

    ROUND(
        total_revenue
        *100.0
        /
        (
            SELECT SUM(total_revenue)
            FROM customer_sales
        ),
        4
    ) AS revenue_percentage

FROM customer_sales

ORDER BY total_revenue DESC;