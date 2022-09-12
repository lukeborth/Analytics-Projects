use www;

SELECT 

    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    t.trip_capacity,
    CONCAT(e.nickname, ' ', e.last_name) AS guide_name,
    COUNT(r.guest_id) AS guests_booked,
FROM
    trip_type tt
        JOIN
    trip t ON tt.trip_type_code = t.trip_type_code
        JOIN
    reservation r ON t.trip_number = r.trip_number
    
GROUP BY trip_number
ORDER BY d.destination_name , tt.trip_type_name , t.trip_date , t.trip_number;
