SELECT 
    u.user_id,
    u.full_name,
    e.event_id,
    e.title AS event_title,
    f.rating,
    f.comments,
    f.feedback_date
FROM 
    Feedback f
JOIN 
    Users u ON f.user_id = u.user_id
JOIN 
    Events e ON f.event_id = e.event_id
WHERE 
    f.rating < 3;



output
| user\_id    | full\_name | event\_id | event\_title | rating | comments | feedback\_date |
| ----------- | ---------- | --------- | ------------ | ------ | -------- | -------------- |
| *(no rows)* |            |           |              |        |          |                |

There are no feedback entries with a rating less than 3 in the current dataset.


