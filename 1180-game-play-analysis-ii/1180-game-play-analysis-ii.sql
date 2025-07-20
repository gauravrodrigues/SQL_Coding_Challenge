# Write your MySQL query statement below

with test as 
(
Select player_id , device_id, rank() over(partition by player_id ORDER BY event_date ASC) as rnk
from Activity
)
select player_id , device_id from test
where rnk = 1
