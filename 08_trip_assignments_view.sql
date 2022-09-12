use www;
INSERT 
    trip_date,
    trip_number,
    destination_name,
    trip_type_name,
    reservation_count,
    guide_nickname,
    gear_nickname
FROM
    trip_date t ON d.trip_date = t.trip_date
		JOIN
	trip_type_name r ON d.destination_name = r.trip_number
		JOIN
SELECT
	trip_assignments_view

FROM


GROUP BY

ORDER BY