# Write your MySQL query statement below

select user_id as buyer_id, join_date, 
ifnull(count(order_date),0) as orders_in_2019 from
users u left join orders o
 on u.user_id  = o.buyer_id 
and Year(order_date) = '2019'
 group by user_id


-- # Write your MySQL query statement below
-- SELECT user_id as buyer_id, join_date, IFNULL(COUNT(order_date), 0) AS orders_in_2019
-- FROM Users u
-- LEFT JOIN Orders o
-- ON u.user_id = o.buyer_id AND YEAR(order_date) = '2019'
-- GROUP BY user_id
