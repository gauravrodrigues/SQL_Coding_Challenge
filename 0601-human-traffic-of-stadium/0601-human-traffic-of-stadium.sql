# Write your MySQL query statement below
with test as (
select *, 
id - row_number() over(order by id) as diff_rnk, 
row_number() over(order by id) as diff_rnk_1
from Stadium
where people >= 100
)

select id , visit_date , people 
from test where diff_rnk in
(
Select diff_rnk
from test
group by diff_rnk
having count(*) >= 3
)