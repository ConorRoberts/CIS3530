DO $$
DECLARE

    rec record;

BEGIN

    select title into strict rec from movie where title='Stinky';

    RAISE NOTICE 'No error. Good';

    EXCEPTION
        WHEN no_data_found THEN
            RAISE NOTICE 'Error found. Bad.';
END
$$