CREATE FUNCTION add_dancing_hall(new_hall_id INT, new_branch_id INT, new_size INT, new_capacity INT, new_style VARCHAR(50), new_floor VARCHAR(50), new_prof_light BOOL, new_photo VARCHAR(50), new_const_rent VARCHAR(50), new_price INT, new_dan_locker BOOL)
RETURNS VOID
AS $$
BEGIN
    INSERT INTO Dancing_hall (hall_id, branch_id, size, capacity, style, floor, prof_light, photo, const_rent, price, dan_locker)
    VALUES (new_hall_id, new_branch_id, new_size, new_capacity, new_style, new_floor, new_prof_light, new_photo, new_const_rent, new_price, new_dan_locker);
END;
$$ LANGUAGE plpgsql;



CREATE PROCEDURE add_dancing_hall(new_hall_id INT, new_branch_id INT, new_size INT, new_capacity INT, new_style VARCHAR(50), new_floor VARCHAR(50), new_prof_light BOOL, new_photo VARCHAR(50), new_const_rent VARCHAR(50), new_price INT, new_dan_locker BOOL) 
AS $$ 
BEGIN 
    INSERT INTO Dancing_hall (hall_id, branch_id, size, capacity, style, floor, prof_light, photo, const_rent, price, dan_locker) 
    VALUES (new_hall_id, new_branch_id, new_size, new_capacity, new_style, new_floor, new_prof_light, new_photo, new_const_rent, new_price, new_dan_locker); 
END; 
$$ LANGUAGE plpgsql;


SELECT add_dancing_hall(1, 1, 100, 50, 'salsa', 'hardwood', true, 'photo.jpg', 'monthly', 500, true);

----------------------------------------------------------------------------------------------------------


CREATE FUNCTION get_dancing_hall_by_capacity(x INT)
RETURNS TABLE (hall_id INT, branch_id INT, size INT, capacity INT, style VARCHAR(10), floor VARCHAR(20), prof_light BOOL, photo VARCHAR(30), const_rent VARCHAR(10), price INT, dan_locker BOOL)
AS $$
BEGIN
    RETURN QUERY SELECT * FROM Dancing_hall WHERE capacity >= x;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_dancing_hall_by_capacity(20);
