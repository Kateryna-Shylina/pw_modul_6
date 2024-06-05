SELECT sb.SubjectName 
FROM Marks m
INNER JOIN Students s on m.StudentID = s.StudentID
INNER JOIN Subjects sb on m.SubjectID = sb.SubjectID
INNER JOIN Teachers t on sb.TeacherID = t.TeacherID 
WHERE s.StudentName = ? 
AND t.TeacherName = ?
GROUP BY sb.SubjectName 