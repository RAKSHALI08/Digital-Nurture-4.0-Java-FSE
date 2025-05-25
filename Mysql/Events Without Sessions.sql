SELECT 
    e.event_id,
    e.title AS event_title,
    e.city,
    e.start_date,
    e.status
FROM 
    Events e
LEFT JOIN 
    Sessions s ON e.event_id = s.event_id
WHERE 
    s.session_id IS NULL
ORDER BY 
    e.start_date;



output
| event\_id   | event\_title | city | start\_date | status |
| ----------- | ------------ | ---- | ----------- | ------ |
| *(No rows)* | –            | –    | –           | –      |
