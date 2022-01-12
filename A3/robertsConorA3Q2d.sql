CREATE OR REPLACE FUNCTION my_func()
RETURNS text
AS
$$
BEGIN
    return (select title from movie order by title asc limit (1));
END;
$$
LANGUAGE plpgsql;

DO
$$
BEGIN
    raise notice 'Result %', my_func();
END
$$