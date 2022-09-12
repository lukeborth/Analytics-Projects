use www;

INSERT INTO `employee` (`employee_id`,`first_name`,`last_name`,`nickname`,`mobile_phone`,`home_phone`,`availability_notes`) VALUES (NULL,'Patrick','Patterson','Pat','847-555-9706',NULL,'All Saturdays and Sundays in June, July, and August');

INSERT INTO `www`.`plays_role` (`employee_id`, `role_code`) VALUES ((SELECT LAST_INSERT_ID()), '2');

INSERT INTO `www`.`plays_role` (`employee_id`, `role_code`) VALUES ((SELECT LAST_INSERT_ID()), '3');

INSERT INTO `www`.`can_guide` (`trip_type_code`, `employee_id`) VALUES ('1', (SELECT LAST_INSERT_ID()));

INSERT INTO `www`.`can_guide` (`trip_type_code`, `employee_id`) VALUES ('2', (SELECT LAST_INSERT_ID()));

INSERT INTO `www`.`can_guide` (`trip_type_code`, `employee_id`) VALUES ('3', (SELECT LAST_INSERT_ID()));
