CREATE OR REPLACE FUNCTION func_2() RETURNS trigger AS $$
DECLARE
    movie_count integer;
BEGIN
    select count(*) into movie_count from movie;

    raise notice 'Number %', movie_count;

    return NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER my_trigger
before
insert on reviewer
for each row execute procedure func_2();

insert into reviewer
values(209,
       'Conor Roberts');