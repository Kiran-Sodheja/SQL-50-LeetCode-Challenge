select activity_date as day,count(distinct user_id)as active_users from Activity where activity_date between '2019-07-20' and '2019-07-27' group by day;

---OR
Select activity_date as day, count(distinct user_id) as active_users
from activity
where activity_date > '2019-06-26' and activity_date < '2019-07-27'
group by activity_date
