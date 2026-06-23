WITH state_sales AS
(
    SELECT

        customer_state,

        SUM(revenue) AS total_revenue

    FROM master_dataset

    GROUP BY customer_state
)

SELECT *

FROM state_sales

ORDER BY total_revenue DESC;