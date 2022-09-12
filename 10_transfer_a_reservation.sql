use www;

DELETE FROM reservation 

WHERE
    guest_id = 9 AND trip_number = 562;

INSERT INTO reservation (guest_id, trip_number) VALUES (9, 564);
