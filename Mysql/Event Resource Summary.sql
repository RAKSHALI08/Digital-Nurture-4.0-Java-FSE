SELECT 
    e.event_id,
    e.title AS event_title,
    SUM(CASE WHEN r.resource_type = 'pdf' THEN 1 ELSE 0 END) AS pdf_count,
    SUM(CASE WHEN r.resource_type = 'image' THEN 1 ELSE 0 END) AS image_count,
    SUM(CASE WHEN r.resource_type = 'link' THEN 1 ELSE 0 END) AS link_count
FROM 
    Events e
LEFT JOIN 
    Resources r ON e.event_id = r.event_id
GROUP BY 
    e.event_id, e.title;



output
📋 Sample Resources Data:
| resource\_id | event\_id | resource\_type | uploaded\_at     |
| ------------ | --------- | -------------- | ---------------- |
| 1            | 2         | pdf            | 2025-05-01 10:00 |
| 2            | 2         | image          | 2025-04-20 09:00 |
| 3            | 3         | link           | 2025-06-25 15:00 |
✅ Final Output:

| event\_id | event\_title                  | pdf\_count | image\_count | link\_count |
| --------- | ----------------------------- | ---------- | ------------ | ----------- |
| 1         | Tech Innovators Meetup        | 0          | 0            | 0           |
| 2         | AI & ML Conference            | 1          | 1            | 0           |
| 3         | Frontend Development Bootcamp | 0          | 0            | 1           |

