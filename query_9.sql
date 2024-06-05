SELECT sb.SubjectName 
FROM Marks m
INNER JOIN Students s on m.StudentID = s.StudentID
INNER JOIN Subjects sb on m.SubjectID = sb.SubjectID
WHERE s.StudentName = ?
GROUP BY sb.SubjectName 