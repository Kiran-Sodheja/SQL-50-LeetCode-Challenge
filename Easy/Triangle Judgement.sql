SELECT
  *,
  IF(x + y > z AND x + z > y AND y + z > x, 'Yes', 'No') AS triangle
FROM Triangle;

--OR
select x, y, z,
case 
when x+y > z and x+z > y and  y+z > x  then 'Yes' 
when x=y and y=z then 'Yes'
else 'No'
end as Triangle
from triangle
