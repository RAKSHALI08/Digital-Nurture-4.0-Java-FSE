SELECT 
    u.user_id,
    u.full_name,
    u.email,
    u.registration_date
FROM 
    Users u
LEFT JOIN 
    Registrations r ON u.user_id = r.user_id
WHERE 
    u.registration_date >= CURDATE() - INTERVAL 30 DAY
    AND r.registration_id IS NULL
ORDER BY 
    u.registration_date DESC;


output
| user\_id | full\_name | email                                         | registration\_date |
| -------- | ---------- | --------------------------------------------- | ------------------ |
| 4        | Diana King | [diana@example.com](mailto:diana@example.com) | 2025-01-15         |
