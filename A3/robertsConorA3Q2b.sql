DO 
$$
DECLARE
    C1 CURSOR FOR SELECT * FROM movie;

    VC1 RECORD;

    result TEXT;
BEGIN
    OPEN C1;

    LOOP
        FETCH C1 into VC1;
        EXIT WHEN NOT FOUND;
        result:= 'TITLE = ' || VC1.title;
        RAISE NOTICE 'Result is % ',result;
    END LOOP;

    CLOSE C1;
END;
$$