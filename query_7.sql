SELECT g.GroupName, sb.SubjectName, s.StudentName, m.MarkDate, m.MarkValue 
FROM Marks m
INNER JOIN Students s on m.StudentID = s.StudentID
INNER JOIN Subjects sb on m.SubjectID = sb.SubjectID
INNER JOIN Groups g on s.GroupID = g.GroupID 
WHERE sb.SubjectName = ? 
AND g.GroupName = ?
ORDER BY s.StudentName