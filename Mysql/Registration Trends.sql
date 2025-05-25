SELECT 
    DATE_FORMAT(registration_date, '%Y-%m') AS registration_month,
    COUNT(*) AS registration_count
FROM 
    Registrations
WHERE 
    registration_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY 
    registration_month
ORDER BY 
    registration_month;


output
| registration\_month | registration\_count |
| ------------------- | ------------------- |
| 2025-04             | 2                   |
| 2025-05             | 2                   |
| 2025-06             | 1                   |
