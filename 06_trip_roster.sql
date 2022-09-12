use www;
SELECT 
    dn.destination_name,
    tt.trip_type_name,
    tn.trip_number,
    td.trip_date,
    CONCAT(e.last_name, ', ', e.first_name) AS guide_name,
    g.age AS guest_age,
    g.weight AS guest_weight,
    g.IsSwimmer AS guest_is_swimmer,
    g.mobile_phone AS guest_mobile_phone
FROM
    trip_type tt
        JOIN
    trip t ON tt.trip_type_code = t.trip_type_code
ORDER BY d.destination_name , tt.trip_type_name , t.trip_date , guest_name;
