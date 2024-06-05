SELECT s.StudentName, ROUND(AVG(m.MarkValue), 2) AS AvarageMark 
FROM Marks m
INNER JOIN Students s on m.StudentID = s.StudentID 
GROUP BY s.StudentID
ORDER BY AVG(m.MarkValue) DESC
LIMIT 5