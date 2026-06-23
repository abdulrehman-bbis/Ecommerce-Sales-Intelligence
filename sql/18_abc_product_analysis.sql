WITH product_sales AS
(
    SELECT
        product_category_name_english,
        SUM(revenue) AS total_revenue

    FROM master_dataset

    GROUP BY product_category_name_english
)

SELECT *

FROM product_sales

ORDER BY total_revenue DESC;