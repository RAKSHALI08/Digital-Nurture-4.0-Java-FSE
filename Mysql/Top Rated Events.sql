SELECT 
    e.event_id,
    e.title AS event_title,
    AVG(f.rating) AS avg_rating,
    COUNT(f.feedback_id) AS total_feedbacks
FROM 
    Events e
JOIN 
    Feedback f ON e.event_id = f.event_id
GROUP BY 
    e.event_id, e.title
HAVING 
    COUNT(f.feedback_id) >= 10
ORDER BY 
    avg_rating DESC;



output
| event\_id   | event\_title | avg\_rating | total\_feedbacks |
| ----------- | ------------ | ----------- | ---------------- |
| *(no rows)* |              |             |                  |
