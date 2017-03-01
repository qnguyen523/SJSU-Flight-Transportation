INSERT INTO AIRPLANE
VALUES (720, 68),
VALUES (719, 68);

INSERT INTO AIRPORT VALUES 
('CSU Los Angeles', 'Los Angeles', '5151 State University Drive, Los Angeles, CA 90032'),
('San Jose State University', 'San Jose', '1 Washington Square, San Jose, CA 95192');

INSERT INTO COMPANY VALUES
('University of Southern California', '3551 Trousdale Parkway, Los Angeles, CA 90089'),
('San Jose State University', '1 Washington Square, San Jose, CA 95192');

INSERT INTO FLIGHT1 VALUES
(1020, '1:00', 'Wednesday', 'Wednesday', '13:00', '1400'),
(1024, '1:00', 'Wednesday', 'Wednesday', '15:00', '1600');

INSERT INTO FLIGHT2 VALUES
(1020, 719, 'San Jose State University', 'CSU Los Angeles'),
(1024, 719, 'CSU Los Angeles', 'San Jose State University');

INSERT INTO PASSENGER VALUES
(1013510, 293099095, 'Yolanda Fee'),
(1014734, 963594232, 'Cornelius Bramer'),
(1034438, 296280235, 'Patrica Mosier'),
(1041744, 524878853, 'Randa Hopkins'),
(1047072, 571916382, 'Isidro Cunha'),
(1102526, 190001753, 'Charise Gaytan'),
(1107205, 160027550, 'Georgann Malbon'),
(1195508, 609777663, 'Albert Derringer'),
(1308856, 239797385, 'Lowell Markland'),
(1310297, 499090398, 'Milan Laramee'),
(1437109, 563928589, 'Hattie Carreira'),
(1466944, 172873780, 'Maragret Beier'),
(1813865, 940025287, 'Florencio Tomaselli'),
(1863056, 341919142, 'Letisha Parfait'),
(1927715, 803459463, 'Carry Siegal'),
(1949842, 350437833, 'Olympia Souther'),
(1985862, 865615264, 'Drusilla Gremillion');

INSERT INTO NONSTAFF VALUES
(1195508),
(1308856),
(1310297),
(1437109),
(1466944),
(1813865),
(1863056),
(1927715),
(1949842),
(1985862);

INSERT INTO STAFF1 VALUES
(1183, 'pilot'),
(1813, 'pilot'),
(1872, 'flight attendant'),
(2178, 'flight attendant'),
(2424, 'flight attendant'),
(2487, 'flight attendant'),
(2625, 'flight attendant');

INSERT INTO STAFF2 VALUES
(1013510, 1183),
(1014734, 1813),
(1034438, 1872),
(1041744, 2178),
(1047072, 2424),
(1102526, 2487),
(1107205, 2625);

INSERT INTO FLIGHTSTAFF VALUES
(1020, 1183),
(1024, 1183),
(1020, 1813),
(1024, 1813),
(1020, 1872),
(1024, 1872),
(1020, 2178),
(1024, 2178),
(1020, 2424),
(1024, 2424),
(1020, 2487),
(1024, 2487),
(1020, 2625),
(1024, 2625);

INSERT INTO SEATBOOKING1 VALUES
('1A', 'window', 'first'),
('1B', 'aisle', 'first'),
('1C', 'aisle', 'first'),
('1D', 'window', 'first'),
('2A', 'window', 'first'),
('2B', 'aisle', 'first'),
('2C', 'aisle', 'first'),
('2D', 'window', 'first'),
('3A', 'window', 'first'),
('3B', 'aisle', 'first'),
('3C', 'aisle', 'first'),
('3D', 'window', 'first'),
('4A', 'window', 'first'),
('4B', 'aisle', 'first'),
('4C', 'aisle', 'first'),
('4D', 'window', 'first'),
('5A', 'window', 'first'),
('5B', 'middle', 'first'),
('5C', 'middle', 'first'),
('5D', 'window', 'first'),
('6A', 'window', 'economy'),
('6B', 'aisle', 'economy'),
('6C', 'aisle', 'economy'),
('6D', 'aisle', 'economy'),
('6E', 'aisle', 'economy'),
('6F', 'window', 'economy'),
('7A', 'window', 'economy'),
('7B', 'aisle', 'economy'),
('7C', 'aisle', 'economy'),
('7D', 'aisle', 'economy'),
('7E', 'aisle', 'economy'),
('7F', 'window', 'economy'),
('8A', 'window', 'economy'),
('8B', 'aisle', 'economy'),
('8C', 'aisle', 'economy'),
('8D', 'aisle', 'economy'),
('8E', 'aisle', 'economy'),
('8F', 'window', 'economy'),
('9A', 'window', 'economy'),
('9B', 'aisle', 'economy'),
('9C', 'aisle', 'economy'),
('9D', 'aisle', 'economy'),
('9E', 'aisle', 'economy'),
('9F', 'window', 'economy'),
('10A', 'window', 'economy'),
('10B', 'aisle', 'economy'),
('10C', 'aisle', 'economy'),
('10D', 'aisle', 'economy'),
('10E', 'aisle', 'economy'),
('10F', 'window', 'economy'),
('11A', 'window', 'economy'),
('11B', 'aisle', 'economy'),
('11C', 'aisle', 'economy'),
('11D', 'aisle', 'economy'),
('11E', 'aisle', 'economy'),
('11F', 'window', 'economy'),
('12A', 'window', 'economy'),
('12B', 'aisle', 'economy'),
('12C', 'aisle', 'economy'),
('12D', 'aisle', 'economy'),
('12E', 'aisle', 'economy'),
('12F', 'window', 'economy'),
('13A', 'window', 'economy'),
('13B', 'aisle', 'economy'),
('13C', 'aisle', 'economy'),
('13D', 'aisle', 'economy'),
('13E', 'aisle', 'economy'),
('13F', 'window', 'economy');

INSERT INTO SEATBOOKING2 VALUES
(1195508, 1020, '1A'),
(1308856, 1020, '11F'),
(1310297, 1020, '8C'),
(1437109, 1020, '9B'),
(1466944, 1020, '5D'),
(1813865, 1024, '10E'),
(1863056, 1024, '13A'),
(1927715, 1024, '6F'),
(1949842, 1024, '3C'),
(1985862, 1024, '12E');

UPDATE AIRPLANE
SET CAPACITY = '69'
WHERE MODELNUMBER = 719;

UPDATE AIRPORT
SET ADDRESS = '1 Washington Square, San Jose, CA 95112'
WHERE SCHOOL='San Jose State University';

UPDATE COMPANY
SET ADDRESS = '1 Washington Square, San Jose, CA 95112'
WHERE NAME='San Jose State University';

UPDATE FLIGHT1
SET DEPARTURETIME = '12:00', ARRIVALTIME='13:00'
WHERE FLIGHTNUMBER = 1020;

UPDATE FLIGHT2
SET MODELNUMBER = 720
WHERE FLIGHTNUMBER = 1020 OR FLIGHTNUMBER = 1024;

UPDATE PASSENGER
SET NAME = 'Maragret Brown'
WHERE passportNo = 172873780;

UPDATE STAFF1
SET EMPLOYEEPOSITION = 'pilot'
WHERE EMPLOYEEID = 1872;

UPDATE SEATBOOKING1
SET SEATPREFERENCE = 'middle'
WHERE SEAT = '11D';

UPDATE SEATBOOKING2
SET SEAT = '11D'
WHERE passengerID = 1308856;

DELETE FROM AIRPLANE
WHERE AIRPLANE.MODELNUMBER = 708;

DELETE FROM AIRPORT 
WHERE AIRPORT.SCHOOL = 'Cal Martitime';

DELETE FROM COMPANY
WHERE NAME = 'San Jose State University';

DELETE FROM FLIGHT1 
WHERE ARRIVALDAY = 'Monday';

DELETE FROM FLIGHT2
WHERE ARRIVINGAIRPORT = 'San Jose State University';

DELETE FROM FLIGHTSTAFF
WHERE FLIGHTNUMBER = 1008;

DELETE FROM NONSTAFF
WHERE PASSENGERID = 1013510;

DELETE FROM PASSENGER
WHERE NAME = 'Randa Hopkins';

DELETE FROM SEATBOOKING1
WHERE SERVICECLASS = 'First'; 

DELETE FROM SEATBOOKING2
WHERE FLIGHTNUMBER = 1008;

DELETE FROM STAFF1
WHERE EMPLOYEEPOSITION = 'pilot';

DELETE FROM STAFF2
WHERE EMPLOYEEID = 1183;


