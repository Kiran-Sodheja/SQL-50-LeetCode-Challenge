select distinct author_id as id from Views where author_id=viewer_id order by id asc

SELECT DISTINCT author_id as id
FROM Views
WHERE viewer_id >= 1
AND author_id = viewer_id
ORDER BY author_id
