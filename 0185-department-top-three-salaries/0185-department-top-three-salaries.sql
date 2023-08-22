SELECT d.name as department, e1.name as employee, e1.salary as Salary
FROM Employee as e1
JOIN Department as d ON e1.departmentId=d.id
WHERE 3 > (
  SELECT COUNT(DISTINCT (e2.salary))
  FROM Employee e2
  WHERE e2.salary>e1.salary AND e1.DepartmentId = e2.DepartmentId);