WITH sumof AS(
SELECT 
  *, SUM(weight) OVER(ORDER BY turn) AS mass
FROM 
  Queue
)
SELECT 
    person_name 
FROM 
    sumof
WHERE 
    mass<=1000
ORDER BY turn DESC LIMIT 1;
