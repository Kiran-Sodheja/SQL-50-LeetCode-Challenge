select a.department, a.employee, a.salary
from (
select d.name as department, e.name as employee, salary, 
    dense_rank() over(Partition by d.name order by salary desc) as rk
from Employee e join Department d
on e.departmentid = d.id) a
where a.rk<4

--0r
WITH
  EmployeesWithRankInDepartment AS (
    SELECT
      Department.name AS department,
      Employee.name AS employee,
      Employee.salary,
      DENSE_RANK() OVER(
        PARTITION BY Employee.departmentId
        ORDER BY Employee.salary DESC
      ) AS `rank`
    FROM Department
    INNER JOIN Employee
      ON (Department.id = Employee.departmentId )
  )
SELECT
  department AS Department,
  employee AS Employee,
  salary AS Salary
FROM EmployeesWithRankInDepartment
WHERE `rank` <= 3;
