use www;

INSERT INTO `guest` (`guest_id`,`first_name`,`last_name`,`experience_code`,`age`,`weight`,`IsSwimmer`,`mobile_phone`)

VALUES (NULL,'Lilly','Ludsen','3',25,120,'Yes',NULL);

INSERT INTO `reservation` (`trip_number`,`guest_id`) VALUES (562, (SELECT LAST_INSERT_ID()));

