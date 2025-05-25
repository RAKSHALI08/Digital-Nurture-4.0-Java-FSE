SELECT 
    e.event_id,
    e.title AS event_title,
    e.city,
    e.start_date,
    e.end_date,
    e.status
FROM 
    Events e
LEFT JOIN 
    Resources r ON e.event_id = r.event_id
WHERE 
    r.resource_id IS NULL
ORDER BY 
    e.event_id;



output
| event\_id | event\_title           | city     | start\_date         | end\_date           | status   |
| --------- | ---------------------- | -------- | ------------------- | ------------------- | -------- |
| 1         | Tech Innovators Meetup | New York | 2025-06-10 10:00:00 | 2025-06-10 16:00:00 | upcoming |
