SELECT s.StudentName, ROUND(AVG(m.MarkValue), 2) AS AvarageMark 
FROM Marks m
INNER JOIN Students s on m.StudentID = s.StudentID
INNER JOIN Subjects sb on m.SubjectID = sb.SubjectID 
WHERE sb.SubjectName = ?
GROUP BY s.StudentID
ORDER BY AVG(m.MarkValue) DESC
LIMIT 1