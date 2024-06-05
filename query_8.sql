SELECT t.TeacherName, sb.SubjectName, ROUND(AVG(m.MarkValue), 2) AS AvarageMark 
FROM Marks m
INNER JOIN Subjects sb on m.SubjectID = sb.SubjectID
INNER JOIN Teachers t on t.TeacherID = sb.TeacherID 
WHERE t.TeacherName = ?
GROUP BY t.TeacherName, sb.SubjectName 
ORDER BY AVG(m.MarkValue) DESC