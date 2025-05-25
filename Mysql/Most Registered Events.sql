SELECT 
    e.event_id,
    e.title AS event_title,
    COUNT(r.registration_id) AS total_registrations
FROM 
    Events e
JOIN 
    Registrations r ON e.event_id = r.event_id
GROUP BY 
    e.event_id, e.title
ORDER BY 
    total_registrations DESC
LIMIT 3;



output
| event\_id | event\_title                  | total\_registrations |
| --------- | ----------------------------- | -------------------- |
| 1         | Tech Innovators Meetup        | 2                    |
| 2         | AI & ML Conference            | 2                    |
| 3         | Frontend Development Bootcamp | 1                    |
