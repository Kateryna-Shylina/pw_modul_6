SELECT g.GroupName, s.StudentName 
FROM Students s 
INNER JOIN Groups g on s.GroupID = g.GroupID 
WHERE g.GroupName = ?
ORDER BY s.StudentName 