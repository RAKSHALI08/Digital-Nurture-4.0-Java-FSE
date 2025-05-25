SELECT 
    e.event_id,
    e.title AS event_title,
    ROUND(AVG(TIMESTAMPDIFF(MINUTE, s.start_time, s.end_time)), 2) AS avg_session_duration_minutes
FROM 
    Events e
JOIN 
    Sessions s ON e.event_id = s.event_id
GROUP BY 
    e.event_id, e.title
ORDER BY 
    e.event_id;


output
| event\_id | event\_title                  | avg\_session\_duration\_minutes |
| --------- | ----------------------------- | ------------------------------- |
| 1         | Tech Innovators Meetup        | 67.50                           |
| 2         | AI & ML Conference            | 90.00                           |
| 3         | Frontend Development Bootcamp | 120.00                          |
