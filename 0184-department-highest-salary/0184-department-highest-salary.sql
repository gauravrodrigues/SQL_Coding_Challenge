-- # Write your MySQL query statement below

select  Department, Employee, salary
from (
select d.name as Department, e.name as Employee, salary, 
dense_rank() over(partition by departmentId order by salary desc) as dns
from Employee e left join Department d
on e.departmentId = d.id
) as dns_table
where dns = 1


-- (select e.name, d.name, e.salary, 
-- dense_rank() over(partition by departmentId order by salary desc) as dns
-- from Employee e left join Department d
-- on e.departmentId = d.id)





-- select departmentId, max(salary)
-- from Employee
-- group by departmentId
