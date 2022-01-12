-- 1a
select distinct sname from s,p,sp where color='RED' and s.sno=sp.sno and p.pno=sp.pno;

-- 1b
select distinct sname from s inner join sp on s.sno=sp.sno inner join p on sp.pno=p.pno and p.color='RED';

-- 2
select a.sno,b.sno from s as a,s as b where a.city like '%N%' and b.city like '%N%' and
a.sno != b.sno and a.sno < b.sno;

-- 3
select sname from s where sno in (select sno from sp where pno in (select pno from sp where sno='S2'));

-- 4a
select sname from s where sno in (select sno from sp except select sno from sp where pno='P2');

-- 4b
select sname from s where sno in (select sno from sp except select sno from sp where pno='P2');

-- 5a
select distinct sno from sp natural join p where weight > 12;

-- 5b
select sno from s where sno in (select distinct sno from sp natural join p where weight>12) order by sno asc;