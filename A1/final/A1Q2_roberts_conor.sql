-- A
select * from offering where cnum=3530;

-- B
select distinct course.cnum,term,name from offering right join course on offering.cnum=course.cnum where year=2016 and course.dept='CIS';

-- C
select distinct course.cnum,course.name from offering natural join course where instructor='Ritu';

-- D
select * from student where sid in (select sid from took natural join offering where term='F' and year='2017' and cnum=3530);

-- E
select * from student where sid not in (select sid from took natural join offering where cnum=3530);

-- F
select student.sid,firstname,lastname,email,cgpa from took natural join offering natural join student where dept='HIS' group by student.sid having count(*)=(select count(*) from offering where dept='HIS');

-- G
select distinct a.cnum,a.dept,b.cnum,b.dept from offering a,offering b where a.cnum=b.cnum and a.dept!=b.dept and a.dept<b.dept;

-- H
select course.cnum,term,year from course left join offering on offering.cnum=course.cnum;

-- I
select took.sid,student.firstname,student.lastname,count(*) timestaken from took left join offering on took.oid=offering.oid inner join student on took.sid=student.sid where offering.dept='CIS' and offering.cnum=3530 group by took.sid,student.lastname,student.firstname having count(*)>1;

-- J
select cnum,name,count(*) enrollment from offering natural join took natural join course where term='F' and year=2017 group by cnum,dept,name;

-- K
update offering set instructor='Harry' where cnum=3530;

-- L
delete from took where oid in (select oid from offering where instructor='Ritu');
delete from offering where instructor='Ritu';