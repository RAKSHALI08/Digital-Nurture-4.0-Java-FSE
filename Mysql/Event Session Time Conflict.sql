SELECT 
    s1.event_id,
    e.title AS event_title,
    s1.session_id AS session1_id,
    s1.title AS session1_title,
    s1.start_time AS session1_start,
    s1.end_time AS session1_end,
    s2.session_id AS session2_id,
    s2.title AS session2_title,
    s2.start_time AS session2_start,
    s2.end_time AS session2_end
FROM 
    Sessions s1
JOIN 
    Sessions s2 ON 
        s1.event_id = s2.event_id AND 
        s1.session_id < s2.session_id AND
        s1.start_time < s2.end_time AND 
        s1.end_time > s2.start_time
JOIN 
    Events e ON s1.event_id = e.event_id
ORDER BY 
    s1.event_id, s1.session_id, s2.session_id;


output
| event\_id | event\_title           | session1\_id | session1\_title | session1\_start | session1\_end | session2\_id | session2\_title | session2\_start | session2\_end |
| --------- | ---------------------- | ------------ | --------------- | --------------- | ------------- | ------------ | --------------- | --------------- | ------------- |
| *(none)*  | *(no conflicts found)* |              |                 |                 |               |              |                 |                 |               |
