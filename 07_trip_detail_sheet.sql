use www;

SELECT 
    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    CONCAT(e.nickname, ' ', e.last_name) AS guide_name,
    e.mobile_phone AS guide_mobile_phone,
    ('414-555-1212') AS www_office_phone,
    t.latest_guest_arrival_time,
    t.departure_time,
    t.estimated_return_time,
    gp.gathering_point_description

FROM
    trip_type tt
        JOIN
    trip t ON tt.trip_type_code = t.trip_type_code
        JOIN
    destination d ON t.destination_code = d.destination_code
        JOIN
GROUP BY trip_number
ORDER BY destination_name , trip_type_name , trip_date;
