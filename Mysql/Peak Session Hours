SELECT 
    e.event_id,
    e.title AS event_title,
    COUNT(s.session_id) AS session_count
FROM 
    Events e
JOIN 
    Sessions s ON e.event_id = s.event_id
WHERE 
    TIME(s.start_time) >= '10:00:00' 
    AND TIME(s.end_time) <= '12:00:00'
GROUP BY 
    e.event_id, e.title;


output
| event\_id | event\_title                  | session\_count |
| --------- | ----------------------------- | -------------- |
| 1         | Tech Innovators Meetup        | 1              |
| 3         | Frontend Development Bootcamp | 1              |
