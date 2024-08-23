CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
     select max(salary) from 
(select id, salary, dense_rank() over(order by salary desc) as ranks
from Employee
group by id) ranl_table
where N = ranks


  );
END