SELECT
    review_score,
    COUNT(*) AS total_reviews
FROM master_dataset
GROUP BY review_score
ORDER BY review_score;