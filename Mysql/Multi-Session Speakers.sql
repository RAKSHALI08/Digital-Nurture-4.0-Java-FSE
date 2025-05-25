SELECT 
    speaker_name,
    COUNT(session_id) AS session_count
FROM 
    Sessions
GROUP BY 
    speaker_name
HAVING 
    session_count > 1
ORDER BY 
    session_count DESC;



output
| speaker\_name | session\_count |
| ------------- | -------------- |
| Dr. Tech      | 2              |
