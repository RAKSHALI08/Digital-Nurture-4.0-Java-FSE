SELECT 
    e.city,
    ROUND(AVG(f.rating), 2) AS average_rating
FROM 
    Feedback f
JOIN 
    Events e ON f.event_id = e.event_id
GROUP BY 
    e.city
ORDER BY 
    average_rating DESC;



output
| city     | average\_rating |
| -------- | --------------- |
| Chicago  | 4.50            |
| New York | 3.00            |
