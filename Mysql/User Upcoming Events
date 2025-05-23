SELECT 
    u.user_id,
    u.full_name,
    e.event_id,
    e.title AS event_title,
    e.city AS event_city,
    e.start_date,
    e.end_date
FROM 
    Users u
JOIN 
    Registrations r ON u.user_id = r.user_id
JOIN 
    Events e ON r.event_id = e.event_id
WHERE 
    e.status = 'upcoming'
    AND u.city = e.city
ORDER BY 
    e.start_date;




output
| user\_id | full\_name    | event\_id | event\_title                  | event\_city | start\_date         | end\_date           |
| -------- | ------------- | --------- | ----------------------------- | ----------- | ------------------- | ------------------- |
| 1        | Alice Johnson | 1         | Tech Innovators Meetup        | New York    | 2025-06-10 10:00:00 | 2025-06-10 16:00:00 |
| 5        | Ethan Hunt    | 3         | Frontend Development Bootcamp | Los Angeles | 2025-07-01 10:00:00 | 2025-07-03 16:00:00 |
