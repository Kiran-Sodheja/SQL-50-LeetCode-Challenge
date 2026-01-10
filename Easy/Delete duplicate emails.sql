Delete p1 from person p1,person p2 where p1.email=p2.email and p1.id>p2.id

---or
With t1 as
(
 Select *,
    row_number() over(partition by email order by id) as rk
    from person
)
Delete from person
where id in (Select t1.id from t1 where t1.rk>1)
