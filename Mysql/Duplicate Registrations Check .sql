SELECT 
    user_id,
    event_id,
    COUNT(*) AS registration_count
FROM 
    Registrations
GROUP BY 
    user_id, event_id
HAVING 
    COUNT(*) > 1
ORDER BY 
    registration_count DESC;



output
| user\_id    | event\_id | registration\_count |
| ----------- | --------- | ------------------- |
| *(No rows)* | –         | –                   |
