-- creating tables

CREATE TABLE AIRPLANE( -- inserted
reg# INTEGER NOT NULL,
name VARCHAR(255) NOT NULL,
planeType_id INTEGER NOT NULL,
hangar_id INTEGER
);

CREATE TABLE PLANE_TYPE( -- inserted
company VARCHAR(255) NOT NULL,
model_no INTEGER NOT NULL,
capacity INTEGER NOT NULL,
weight FLOAT NOT NULL,
);

CREATE TABLE WORKS_ON( -- inserted
plane_model_no INTEGER NOT NULL,
employee_id INTEGER NOT NULL
);

CREATE TABLE HANGAR( -- inserted
number INTEGER NOT NULL,
capacity INTEGER NOT NULL,
location VARCHAR(255) NOT NULL
);

CREATE TABLE SERVICE( -- inserted
id INTEGER NOT NULL,
date DATE NOT NULL,
hours FLOAT,
work_code INTEGER NOT NULL,
plane_id INTEGER NOT NULL -- the plane on which the service is done
);

CREATE TABLE MAINTAINS( -- inserted
employee_id INTEGER NOT NULL,
service_id INTEGER NOT NULL
);

CREATE TABLE EMPLOYEE( -- inserted
-- PERSON 
SSN INTEGER NOT NULL,
name VARCHAR(255) NOT NULL,
address VARCHAR(255),
tel_number VARCHAR(255),
email VARCHAR(255),
gender VARCHAR(20),

salary INTEGER NOT NULL,
shifts VARCHAR(255) NOT NULL
);


CREATE TABLE CORPORATION( -- inserted
id INTEGER NOT NULL,
name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
tel_number VARCHAR(255) NOT NULL
);

CREATE TABLE PERSON( -- inserted
-- PERSON 
SSN INTEGER NOT NULL,
name VARCHAR(255) NOT NULL,
address VARCHAR(255),
tel_number VARCHAR(255),
email VARCHAR(255),
gender VARCHAR(20)
);

CREATE TABLE OWNS( -- inserted
owner_id_person INTEGER,
owner_id_corporation INTEGER,
plane_id INTEGER NOT NULL,
Pdate DATE NOT NULL
);

CREATE TABLE PILOT( -- inserted
-- PERSON 
SSN INTEGER NOT NULL,
name VARCHAR(255) NOT NULL,
address VARCHAR(255),
tel_number VARCHAR(255),
email VARCHAR(255),
gender VARCHAR(20),

--PILOT
level VARCHAR(255) NOT NULL,
restr VARCHAR(255),
flight_hours FLOAT,
availability VARCHAR(20) NOT NULL,
lic_no INTEGER NOT NULL,
lic_type VARCHAR(200) NOT NULL,


);

CREATE TABLE FLIES( -- inserted
pilot_id INTEGER NOT NULL,
plane_id INTEGER NOT NULL,
);

-- COUNTING THE NUMBER OF TABLES
select count(*) -- count is a function we are passing * meaning all to it. count tells the number of tables
from INFORMATION_SCHEMA.TABLES
where TABLE_TYPE='BASE TABLE';

-- INSERT THE DUMMY DATA 

-- AIRPLANE

INSERT INTO AIRPLANE VALUES (1, 'Boeing 737', 737, 2);
INSERT INTO AIRPLANE VALUES (2, 'Airbus A320', 320, 1);
INSERT INTO AIRPLANE VALUES (3, 'Boeing 747', 747, 4);
INSERT INTO AIRPLANE VALUES (4, 'Airbus A330', 330, 2);
INSERT INTO AIRPLANE VALUES (5, 'Embraer E190', 190, 1);
INSERT INTO AIRPLANE VALUES (6, 'Bombardier CRJ200', 111, 5);
INSERT INTO AIRPLANE VALUES (7, 'Boeing 777', 777, 4);
INSERT INTO AIRPLANE VALUES (8, 'Airbus A380', 380, 2);
INSERT INTO AIRPLANE VALUES (9, 'Boeing 787', 787, 3);
INSERT INTO AIRPLANE VALUES (10, 'Embraer E195', 195, 1);
INSERT INTO AIRPLANE VALUES (11, 'Bombardier CRJ900', 222, 3);
INSERT INTO AIRPLANE VALUES (12, 'Boeing 737 MAX', 333, 5);
INSERT INTO AIRPLANE VALUES (13, 'Airbus A319', 444, 3);
INSERT INTO AIRPLANE VALUES (14, 'Boeing 757', 757, 2);
INSERT INTO AIRPLANE VALUES (15, 'Embraer E175', 175, 1);
INSERT INTO AIRPLANE VALUES (16, 'Airbus A340', 340, 5);
INSERT INTO AIRPLANE VALUES (17, 'Boeing 767', 767, 4);
INSERT INTO AIRPLANE VALUES (18, 'Boeing 717', 717, 1);
INSERT INTO AIRPLANE VALUES (19, 'Airbus A310', 310, 2);
INSERT INTO AIRPLANE VALUES (20, 'Boeing 727', 727, 3);


-- PLANE TYPE

INSERT INTO PLANE_TYPE VALUES ('Boeing', 737, 189, 79000.0);
INSERT INTO PLANE_TYPE VALUES ('Airbus', 320, 180, 77000.0);
INSERT INTO PLANE_TYPE VALUES ('Boeing', 747, 660, 970000.0);
INSERT INTO PLANE_TYPE VALUES ('Airbus', 330, 335, 242000.0);
INSERT INTO PLANE_TYPE VALUES ('Embraer', 190, 114, 50500.0);
INSERT INTO PLANE_TYPE VALUES ('Bombardier', 111, 50, 24630.0);
INSERT INTO PLANE_TYPE VALUES ('Boeing', 777, 396, 775000.0);
INSERT INTO PLANE_TYPE VALUES ('Airbus', 380, 853, 575000.0);
INSERT INTO PLANE_TYPE VALUES ('Boeing', 787, 330, 560000.0);
INSERT INTO PLANE_TYPE VALUES ('Embraer', 195, 124, 51500.0);
INSERT INTO PLANE_TYPE VALUES ('Bombardier', 222, 90, 35500.0);
INSERT INTO PLANE_TYPE VALUES ('Boeing', 333, 230, 82000.0);
INSERT INTO PLANE_TYPE VALUES ('Airbus', 444, 124, 64000.0);
INSERT INTO PLANE_TYPE VALUES ('Boeing', 757, 239, 127000.0);
INSERT INTO PLANE_TYPE VALUES ('Embraer', 175, 78, 39300.0);
INSERT INTO PLANE_TYPE VALUES ('Airbus', 340, 375, 275000.0);
INSERT INTO PLANE_TYPE VALUES ('Boeing', 767, 375, 202000.0);
INSERT INTO PLANE_TYPE VALUES ('Bombardier', 717, 78, 32600.0);
INSERT INTO PLANE_TYPE VALUES ('Boeing', 310, 189, 95000.0);
INSERT INTO PLANE_TYPE VALUES ('Airbus', 727, 236, 93000.0);

select PLANE_TYPE.model_no from PLANE_TYPE

select AIRPLANE.name, PLANE_TYPE.company
from AIRPLANE
INNER JOIN PLANE_TYPE
ON AIRPLANE.planeType_id = PLANE_TYPE.model_no


-- PERSON 

INSERT INTO PERSON (SSN, name, address, tel_number, email, gender) VALUES
  (123456789, 'Muhammad Ali', 'Lahore, Pakistan', '03001234567', 'muhammad.ali@example.com', 'Male'),
  (234567890, 'Ahmed Khan', 'Karachi, Pakistan', '03121234567, 03211234567', 'ahmed.khan@example.com', 'Male'),
  (345678901, 'Fatima Sheikh', 'Islamabad, Pakistan', '03331234567', 'fatima.sheikh@example.com', 'Female'),
  (456789012, 'Ali Hassan', 'Rawalpindi, Pakistan', '03441234567', 'ali.hassan@example.com', 'Male'),
  (567890123, 'Muhammad Imran', 'Faisalabad, Pakistan', '03551234567', 'muhammad.imran@example.com', 'Male'),
  (678901234, 'Aisha Malik', 'Multan, Pakistan', '03661234567', 'aisha.malik@example.com', 'Female'),
  (789012345, 'Hassan Ali', 'Peshawar, Pakistan', '03771234567', 'hassan.ali@example.com', 'Male'),
  (890123456, 'Sara Khan', 'Lahore, Pakistan', '03881234567', 'sara.khan@example.com', 'Female'),
  (901234567, 'Ali Raza', 'Karachi, Pakistan', '03991234567', 'ali.raza@example.com', 'Male'),
  (102345678, 'Mehmood Ahmed', 'Islamabad, Pakistan', '03131234567', 'mehmood.ahmed@example.com', 'Male'),
  (123456780, 'Maryam Khan', 'Rawalpindi, Pakistan', '03231234567', 'maryam.khan@example.com', 'Female'),
  (234567891, 'Asif Ali', 'Faisalabad, Pakistan', '03331234567', 'asif.ali@example.com', 'Male'),
  (345678902, 'Zainab Hussain', 'Multan, Pakistan', '03431234567', 'zainab.hussain@example.com', 'Female'),
  (456789013, 'Hamza Malik', 'Peshawar, Pakistan', '03531234567', 'hamza.malik@example.com', 'Male'),
  (567890124, 'Nida Raza', 'Lahore, Pakistan', '03631234567', 'nida.raza@example.com', 'Female'),
  (678901235, 'Abdul Jabbar', 'Karachi, Pakistan', '03731234567', 'abdul.jabbar@example.com', 'Male'),
  (789012346, 'Saba Ahmed', 'Islamabad, Pakistan', '03831234567', 'saba.ahmed@example.com', 'Female'),
  (901234578, 'Sadia Ali', 'Rawalpindi, Pakistan', '03931234567', 'sadia.ali@example.com', 'Female'),
  (102345689, 'Sajjad Ahmed', 'Faisalabad, Pakistan', '03141234567', 'sajjad.ahmed@example.com', 'Male'),
  (123456790, 'Hina Malik', 'Multan, Pakistan', '03241234567', 'hina.malik@example.com', 'Female');

select PLANE_TYPE.model_no from PLANE_TYPE;


-- HANGAR

INSERT INTO HANGAR (number, capacity, location)
VALUES
    (1, 10, 'Karachi, Pakistan'),
    (2, 15, 'Lahore, Pakistan'),
    (3, 20, 'Islamabad, Pakistan'),
    (4, 18, 'Rawalpindi, Pakistan'),
    (5, 15, 'Peshawar, Pakistan');

-- CORPORATION

INSERT INTO CORPORATION (id, name, address, tel_number)
VALUES 
  (1, 'Pakistan Petroleum Limited', 'Lahore, Pakistan', '0345-1234567'),
  (2, 'Oil and Gas Development Company Limited', 'Karachi, Pakistan', '021-12345678'),
  (3, 'Pakistan State Oil', 'Islamabad, Pakistan', '051-9876543'),
  (4, 'National Bank of Pakistan', 'Rawalpindi, Pakistan', '051-7654321'),
  (5, 'Habib Bank Limited', 'Faisalabad, Pakistan', '041-5555555'),
  (6, 'United Bank Limited', 'Lahore, Pakistan', '0300-9876543'),
  (7, 'Pakistan International Airlines', 'Karachi, Pakistan', '021-5555555'),
  (8, 'Engro Corporation', 'Islamabad, Pakistan', '051-1234567'),
  (9, 'Lucky Cement Limited', 'Rawalpindi, Pakistan', '051-1111111'),
  (10, 'Fauji Fertilizer Company Limited', 'Faisalabad, Pakistan', '041-1234567'),
  (11, 'Packages Limited', 'Lahore, Pakistan', '0321-5555555'),
  (12, 'MCB Bank Limited', 'Karachi, Pakistan', '021-9876543'),
  (13, 'Attock Petroleum Limited', 'Islamabad, Pakistan', '051-1234567'),
  (14, 'Pakistan Telecommunication Company Limited', 'Rawalpindi, Pakistan', '051-5555555'),
  (15, 'Sui Northern Gas Pipelines Limited', 'Faisalabad, Pakistan', '041-9876543'),
  (16, 'Sui Southern Gas Company Limited', 'Lahore, Pakistan', '0333-1234567'),
  (17, 'Dawood Hercules Corporation Limited', 'Karachi, Pakistan', '021-1111111'),
  (18, 'Nishat Mills Limited', 'Islamabad, Pakistan', '051-5555555'),
  (19, 'Nestle Pakistan Limited', 'Rawalpindi, Pakistan', '051-1234567'),
  (20, 'The Coca-Cola Export Corporation (Pakistan)', 'Faisalabad, Pakistan', '041-5555555');

-- PILOT

INSERT INTO PILOT (SSN, name, address, tel_number, email, gender, level, restr, flight_hours, availability, lic_no, lic_type) 
VALUES 
(1, 'Ali Khan', 'Lahore, Pakistan', '0333-1234567', 'ali.khan@example.com', 'Male', 'Captain', 'No night flying', 2000, 'Available', 12345, 'Commercial'),
(2, 'Aisha Ahmed', 'Islamabad, Pakistan', '0300-9876543, 0333-4567890', 'aisha.ahmed@example.com', 'Female', 'First Officer', NULL, 1000, 'Unavailable', 23456, 'Private'),
(3, 'Hamza Ali', 'Karachi, Pakistan', '0321-2345678', 'hamza.ali@example.com', 'Male', 'Captain', 'No instrument flying', 3000, 'Available', 34567, 'Commercial'),
(4, 'Fatima Khan', 'Rawalpindi, Pakistan', '0312-3456789', 'fatima.khan@example.com', 'Female', 'Captain', NULL, 2500, 'Available', 45678, 'Commercial'),
(5, 'Mohammad Ali', 'Faisalabad, Pakistan', '0334-5678901', 'mohammad.ali@example.com', 'Male', 'First Officer', 'No night flying, No instrument flying', 1500, 'Unavailable', 56789, 'Commercial'),
(6, 'Zainab Ahmed', 'Peshawar, Pakistan', '0315-6789012', 'zainab.ahmed@example.com', 'Female', 'Captain', NULL, 2800, 'Available', 67890, 'Commercial'),
(7, 'Sara Khan', 'Multan, Pakistan', '0333-7890123, 0316-2345678', 'sara.khan@example.com', 'Female', 'First Officer', 'No night flying', 800, 'Available', 78901, 'Private'),
(8, 'Abdullah Ali', 'Quetta, Pakistan', '0331-3456789', 'abdullah.ali@example.com', 'Male', 'Captain', NULL, 3500, 'Unavailable', 89012, 'Commercial'),
(9, 'Ayesha Khan', 'Gujranwala, Pakistan', '0322-4567890, 0335-1234567', 'ayesha.khan@example.com', 'Female', 'First Officer', 'No instrument flying', 1200, 'Available', 90123, 'Private'),
(10, 'Hassan Ahmed', 'Sialkot, Pakistan', '0313-5678901', 'hassan.ahmed@example.com', 'Male', 'Captain', 'No night flying', 4000, 'Available', 01234, 'Commercial'),
(11, 'Sadia Ali', 'Lahore, Pakistan', '0336-7890123', 'sadia.ali@example.com', 'Female', 'First Officer', 'No instrument flying', 900, 'Unavailable', 34567, 'Private'),
(12, 'Usman Khan', 'Islamabad, Pakistan', '0320-2345678', 'usman.khan@example.com', 'Male', 'Captain', NULL, 3200, 'Available', 45678, 'Commercial'),
(14, 'Muhammad Khan', 'Rawalpindi, Pakistan', '0332-3456789, 0311-1234567', 'muhammad.khan@example.com', 'Male', 'First Officer', 'No night flying', 1700, 'Available', 56789, 'Private'),
(15, 'Aisha Ali', 'Peshawar, Pakistan', '0321-2345678, 0334-5678901', 'aisha.ali@example.com', 'Female', 'Captain', 'No instrument flying', 2900, 'Unavailable', 67890, 'Commercial'),
(16, 'Ahmed Khan', 'Multan, Pakistan', '0335-6789012', 'ahmed.khan@example.com', 'Male', 'Captain', NULL, 3900, 'Available', 78901, 'Commercial'),
(17, 'Maryam Ahmed', 'Karachi, Pakistan', '0312-3456789', 'maryam.ahmed@example.com', 'Female', 'First Officer', 'No night flying, No instrument flying', 1100, 'Available', 89012, 'Private'),
(18, 'Hassan Ali', 'Lahore, Pakistan', '0331-4567890', 'hassan.ali@example.com', 'Male', 'Captain', NULL, 4100, 'Available', 90123, 'Commercial'),
(20, 'Aisha Siddiqui', 'Karachi, Pakistan', '0321-8765432', 'aisha.siddiqui@example.com', 'Female', 'Captain', 'No instrument flying', 4500, 'Unavailable', 98654, 'Commercial'),
(19, 'Ahmed Ali', 'Lahore, Pakistan', '0311-9876543', 'ahmed.ali@example.com', 'Male', 'First Officer', 'No night flying', 1700, 'Available', 76543, 'Private');

-- EMPLOYEE

INSERT INTO EMPLOYEE(SSN, name, address, tel_number, email, gender, salary, shifts)
VALUES
  (1, 'Ali Ahmed', 'Lahore, Pakistan', '0333-1234567', 'ali.ahmed@example.com', 'Male', 45000, 'day'),
  (2, 'Fatima Khan', 'Islamabad, Pakistan', '0311-7654321, 0300-1234567', 'fatima.khan@example.com', 'Female', 50000, 'day and night'),
  (3, 'Mohammad Abbas', 'Rawalpindi, Pakistan', '0321-9876543', 'mohammad.abbas@example.com', 'Male', 55000, 'night'),
  (4, 'Saima Ali', 'Karachi, Pakistan', '0345-2345678', 'saima.ali@example.com', 'Female', 60000, 'day'),
  (5, 'Tariq Hussain', 'Multan, Pakistan', '0333-7654321', 'tariq.hussain@example.com', 'Male', 65000, 'day and night'),
  (6, 'Sadia Khan', 'Faisalabad, Pakistan', '0312-1234567', 'sadia.khan@example.com', 'Female', 40000, 'night'),
  (7, 'Nadeem Ahmed', 'Lahore, Pakistan', '0301-2345678', 'nadeem.ahmed@example.com', 'Male', 45000, 'day'),
  (8, 'Asma Akhtar', 'Islamabad, Pakistan', '0322-7654321', 'asma.akhtar@example.com', 'Female', 50000, 'day and night'),
  (9, 'Saqib Hussain', 'Rawalpindi, Pakistan', '0333-9876543', 'saqib.hussain@example.com', 'Male', 55000, 'night'),
  (10, 'Sana Malik', 'Karachi, Pakistan', '0344-2345678', 'sana.malik@example.com', 'Female', 60000, 'day'),
  (11, 'Tahir Mahmood', 'Multan, Pakistan', '0310-7654321', 'tahir.mahmood@example.com', 'Male', 65000, 'day and night'),
  (12, 'Rabia Khan', 'Faisalabad, Pakistan', '0332-1234567', 'rabia.khan@example.com', 'Female', 40000, 'night'),
  (13, 'Ahmed Ali', 'Lahore, Pakistan', '0345-2345678', 'ahmed.ali@example.com', 'Male', 45000, 'day'),
  (14, 'Sadia Malik', 'Islamabad, Pakistan', '0321-7654321', 'sadia.malik@example.com', 'Female', 50000, 'day and night'),
  (15, 'Yasir Hussain', 'Rawalpindi, Pakistan', '0331-9876543', 'yasir.hussain@example.com', 'Male', 55000, 'night'),
  (16, 'Nadia Khan', 'Karachi, Pakistan', '0315-2345678', 'nadia.khan@example.com', 'Female', 60000, 'day'),
  (17, 'Ayesha Ahmed', 'Karachi, Pakistan', '0333-2345678', 'ayesha.ahmed@example.com', 'Female', 60000, 'night'),
  (18, 'Imran Khan', 'Lahore, Pakistan', '0320-1234567', 'imran.khan@example.com', 'Male', 45000, 'day'),
  (19, 'Aisha Ali', 'Islamabad, Pakistan', '0313-7654321', 'aisha.ali@example.com', 'Female', 50000, 'day and night'),
  (20, 'Hassan Abbas', 'Rawalpindi, Pakistan', '0346-9876543', 'hassan.abbas@example.com', 'Male', 55000, 'night');

SELECT * FROM EMPLOYEE

-- WORKS_ON

INSERT INTO WORKS_ON (plane_model_no, employee_id)
VALUES 
    (737, 1),
    (737, 3),
    (320, 2),
    (320, 4),
    (747, 5),
    (747, 6),
    (330, 7),
    (330, 9),
    (190, 8),
    (190, 10),
	(111, 12),
    (777, 11),
    (787, 13),
    (195, 15),
    (195, 16),
    (222, 14),
    (333, 19),
    (444, 17),
    (757, 20),
    (175, 18);

-- MAINTAINS

INSERT INTO MAINTAINS (employee_id, service_id)
VALUES 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4);

-- SERVICE

INSERT INTO SERVICE (id, date, hours, work_code, plane_id)
VALUES 
(1, '2023-01-01', 3.5, 12345, 1),
(2, '2023-01-02', 2.5, 23456, 1),
(3, '2023-01-03', 4.0, 34567, 1),
(4, '2023-01-04', 1.5, 45678, 2),
(5, '2023-01-05', 2.0, 56789, 2),
(6, '2023-01-06', 5.0, 67890, 2),
(7, '2023-01-07', 3.5, 12345, 3),
(8, '2023-01-08', 2.5, 23456, 4),
(9, '2023-01-09', 4.0, 34567, 5),
(10, '2023-01-10', 1.5, 45678, 6),
(11, '2023-01-11', 2.0, 56789, 6),
(12, '2023-01-12', 5.0, 67890, 7),
(13, '2023-01-13', 3.5, 12345, 8),
(14, '2023-01-14', 2.5, 23456, 9),
(15, '2023-01-15', 4.0, 34567, 10),
(16, '2023-01-16', 1.5, 45678, 12),
(17, '2023-01-17', 2.0, 56789, 15),
(18, '2023-01-18', 5.0, 67890, 17),
(19, '2023-01-19', 3.5, 12345, 19),
(20, '2023-01-20', 2.5, 23456, 20);

-- OWNS

INSERT INTO OWNS (owner_id_person, owner_id_corporation, plane_id, Pdate)
VALUES
(123456789, NULL, 1, '2023-03-23'),
(234567890, NULL, 1, '2023-03-23'),
(345678901, NULL, 1, '2023-03-23'),
(NULL, 4, 2, '2023-03-23'),
(NULL, 5, 3, '2023-09-23'),
(NULL, 6, 4, '2023-01-1'),
(NULL, 7, 5, '2023-03-2'),
(NULL, 8, 6, '2023-06-23'),
(123456790, NULL, 7, '2023-03-23'),
(102345689, NULL, 7, '2023-03-23'),
(901234578, NULL, 7, '2023-03-23'),
(NULL, 12, 8, '2023-03-09'),
(NULL, 13, 9, '2023-03-21'),
(NULL, 14, 10, '2023-03-22'),
(NULL, 15, 11, '2023-03-24'),
(NULL, 16, 12, '2023-03-25'),
(NULL, 17, 13, '2023-03-26'),
(567890124, NULL, 14, '2023-03-28'),
(678901235, NULL, 14, '2023-03-28'),
(789012346, NULL, 14, '2023-03-28');

-- FLIES 

INSERT INTO FLIES (pilot_id, plane_id) VALUES
(1, 737),
(1, 320),
(2, 747),
(2, 330),
(3, 190),
(3, 111),
(4, 777),
(4, 380),
(5, 787),
(5, 195),
(6, 222),
(6, 333),
(7, 444),
(7, 757),
(8, 175),
(8, 340),
(9, 767),
(9, 717),
(10, 310),
(10, 727);