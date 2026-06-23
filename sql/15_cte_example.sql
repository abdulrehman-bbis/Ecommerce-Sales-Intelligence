SELECT
    month,

    ROUND(monthly_revenue,2) AS monthly_revenue,

    ROUND(
        SUM(monthly_revenue)
        OVER(
            ORDER BY month
        ),
        2
    ) AS cumulative_revenue

FROM
(
    SELECT
        strftime('%Y-%m', order_purchase_timestamp) AS month,

        SUM(revenue) AS monthly_revenue

    FROM master_dataset

    GROUP BY month
)

ORDER BY month;