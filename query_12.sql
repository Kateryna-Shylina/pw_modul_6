SELECT s.StudentName, m.MarkDate, m.MarkValue 
FROM Marks m
INNER JOIN Students s on m.StudentID = s.StudentID
INNER JOIN Subjects sb on m.SubjectID = sb.SubjectID
INNER JOIN Groups g on s.GroupID = g.GroupID 
WHERE g.GroupName = ? 
AND sb.SubjectName = ? 
AND m.MarkDate = (SELECT MAX(MarkDate) 
                  FROM Marks 
                  WHERE StudentID = s.StudentID 
                  AND SubjectID = sb.SubjectID)