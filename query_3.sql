SELECT g.GroupName, ROUND(AVG(m.MarkValue), 2) AS AvarageMark 
FROM Marks m
INNER JOIN Students s on m.StudentID = s.StudentID
INNER JOIN Subjects sb on m.SubjectID = sb.SubjectID
INNER JOIN Groups g on s.GroupID = g.GroupID 
WHERE sb.SubjectName = ?
GROUP BY g.GroupID
ORDER BY AVG(m.MarkValue) DESC