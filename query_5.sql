SELECT t.TeacherName, s.SubjectName 
FROM Subjects s 
INNER JOIN Teachers t ON s.TeacherID  = t.TeacherID 
WHERE t.TeacherName = ?