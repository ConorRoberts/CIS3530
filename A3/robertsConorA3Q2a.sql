DO
$$
DECLARE
    some_int movie.mid%TYPE;
    some_string movie.title%TYPE;
BEGIN
    some_int = 69;
    some_string = 'Stinky';
    raise notice 'Value: %', some_int;
    raise notice 'Value: %', some_string;
END
$$