-- a
select distinct parent from parent_of where child in (select parent from parent_of);

-- b
select distinct a.child as sister,b.child as name from parent_of a, parent_of b where a.child in (select name from females) and a.child!=b.child and a.parent=b.parent;

-- c
select distinct a.child,c.child from parent_of a, parent_of b, parent_of c where a.parent=b.parent and b.child=c.parent and a.child!=b.child order by a.child asc;

-- d
select distinct a.child,c.child from parent_of a, parent_of b, parent_of c where a.parent=b.parent and b.child=c.parent and a.child!=b.child and c.child in (select name from females) order by a.child asc;

-- e
select distinct c.child,d.child from parent_of a, parent_of b, parent_of c,parent_of d where a.parent=b.parent and b.child=c.parent and a.child=d.parent and a.child!=b.child and c.child!=d.child and c.child<d.child;

-- f
select distinct a.parent as "Parent-in-law",b.child as "Daughter-in-Law" from parent_of a,parent_of b where a.parent!=b.parent and (a.child,b.child) in (select * from married_to);