SELECT 
    u.city,
    COUNT(DISTINCT r.user_id) AS distinct_user_registrations
FROM 
    Users u
JOIN 
    Registrations r ON u.user_id = r.user_id
GROUP BY 
    u.city
ORDER BY 
    distinct_user_registrations DESC
LIMIT 5;



output
| city        | distinct\_user\_registrations |
| ----------- | ----------------------------- |
| New York    | 2                             |
| Los Angeles | 2                             |
| Chicago     | 1                             |
