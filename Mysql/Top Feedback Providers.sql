SELECT 
    u.user_id,
    u.full_name,
    u.email,
    COUNT(f.feedback_id) AS feedback_count
FROM 
    Users u
JOIN 
    Feedback f ON u.user_id = f.user_id
GROUP BY 
    u.user_id, u.full_name, u.email
ORDER BY 
    feedback_count DESC
LIMIT 5;




output
| user\_id | full\_name  | email                                             | feedback\_count |
| -------- | ----------- | ------------------------------------------------- | --------------- |
| 2        | Bob Smith   | [bob@example.com](mailto:bob@example.com)         | 1               |
| 3        | Charlie Lee | [charlie@example.com](mailto:charlie@example.com) | 1               |
| 4        | Diana King  | [diana@example.com](mailto:diana@example.com)     | 1               |
