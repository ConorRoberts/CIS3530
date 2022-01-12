-- 1
SELECT name
FROM Reviewer
WHERE rid IN (SELECT rid
FROM Rating
WHERE mid IN (SELECT mid FROM rating WHERE rid = 202)
GROUP BY rid
HAVING COUNT(mid) >=
(SELECT COUNT(mid) FROM rating WHERE rid=202));

-- 2
select reviewer.name,count(*) as total from rating natural join reviewer group by reviewer.rid order by total desc;

-- 3
select title,count(*) as "Reviewed by" from rating natural join movie group by title having count(*)>1 order by "Reviewed by" desc;

-- 4
select title from rating natural join movie where stars=(select max(stars) from rating);

-- 5
select distinct title from rating natural join movie where year=(select min(year) from movie);