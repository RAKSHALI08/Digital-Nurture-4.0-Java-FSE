SELECT 
    u.user_id,
    u.full_name,
    u.email,
    u.city,
    u.registration_date
FROM 
    Users u
LEFT JOIN 
    Registrations r ON u.user_id = r.user_id
GROUP BY 
    u.user_id, u.full_name, u.email, u.city, u.registration_date
HAVING 
    MAX(r.registration_date) IS NULL 
    OR MAX(r.registration_date) < DATE_SUB('2025-05-23', INTERVAL 90 DAY);



output
| user\_id    | full\_name | email | city | registration\_date |
| ----------- | ---------- | ----- | ---- | ------------------ |
| *(no rows)* |            |       |      |                    |

All users have registered for at least one event in the last 90 days.

