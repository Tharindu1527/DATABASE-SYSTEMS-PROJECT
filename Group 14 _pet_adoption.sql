CREATE DATABASE PET_ADOPTION;

USE pet_adoption;

CREATE TABLE USER(
User_ID varchar(45) not null,
User_Type varchar(45) not null,
Name  varchar(45) not null,
Email varchar(45) not null,
Reg_Date varchar(45) not null,
Appart_No int not null,
Street_No varchar(45) not NULL,
Street_Name varchar(45) not NULL,
City varchar(45) not NULL,
State varchar(45) not NULL,
primary key (User_ID)
);

INSERT INTO USER VALUES ('U001', 'ADMIN', 'Namal Rajapaksha', 'namalrah456@gmail.com', '30/2/2023', '19', 'thissapura', 'chadayanthalawa', 'ampara', 'Srilanka');
INSERT INTO USER VALUES ('U002', 'ADMIN', 'Kumara welgama ', 'kumar4322@gmail.com', '15/5/2020', '2', 'bogoda', 'marisiwella', 'Welimada', 'Srilanka');
INSERT INTO USER VALUES ('U003', 'ADOPTER', 'Niranji', 'niranji5664@gmail.com', '24/12/2021', '45', 'weeragoda', 'bogala', 'badulla', 'Srilanka');
INSERT INTO USER VALUES ('U004', 'NULL', 'Tharindu', 'tharindu5664@gmail.com', '22/1/2022', '23', 'kithulpe', 'haguranketha', 'Rikillagaskada', 'Srilanka');
INSERT INTO USER VALUES ('U005', 'EMPLOYEE', 'Anura', 'anura5664@gmemplil.com', '15/2/2024', '1', 'kandakadu', 'kampane', 'badulla', 'Srilanka');
INSERT INTO USER VALUES ('U006', 'EMPLOYEE', 'Gihan', 'gihan5664@gmemplil.com', '23/3/2022', '35', 'rajagahawewa', 'howewa', 'puththalama', 'Srilanka');
INSERT INTO USER VALUES ('U007', 'ADOPTER', 'Malinda', 'malinda675@gmail.com', '24/2/2024', '356', 'marathmuni', 'maliyadda', 'mirissa', 'Srilanka');
INSERT INTO USER VALUES ('U008', 'ADOPTER', 'Kapila', 'kapila4563@gmail.com', '13/2/2021', '108', 'beressa', 'kithulgala', 'hambanthota', 'Srilanka');
INSERT INTO USER VALUES ('U010', 'ADOPTER', 'Kalpana', 'kalpana4563@gmail.com', '13/2/2024', '10', 'Gayagama', 'katukithula', 'hambegamuwa', 'Srilanka');
INSERT INTO USER VALUES ('U015', 'ADOPTER', 'Nadun', 'Nadun5663@gmail.com', '13/12/2024', '53', 'Ethakandawake', 'Lunuwatte', 'Uva-paranagama', 'Srilanka');
INSERT INTO USER VALUES ('U0011', 'EMPLOYEE', 'Gihara', 'gihara664@gmemplil.com', '28/8/2024', '56', 'Katumatiya', 'Hokandara', 'Kaduwela', 'Srilanka');
INSERT INTO USER VALUES ('U012', 'EMPLOYEE', 'Kamasan', 'kamesan664@gmemplil.com', '14/6/2021', '9', 'Ethiliwewa', 'Pigurana', 'Wellawaya', 'Srilanka');
INSERT INTO USER VALUES ('U013', 'ADOPTER', 'Nirmal', 'Nirmal5663@gmail.com', '03/10/2021', '43', 'Kirawanagaam', 'Lunuwatte', 'Uva-paranagama', 'Srilanka');
INSERT INTO USER VALUES ('U014', 'EMPLOYEE', 'NirmalI', 'NirmalI5663@gmail.com', '30/10/2021', '3', 'Kirawanagama', 'Lunuwatte', 'Uva-paranagama', 'Srilanka');
USE pet_adoption;
UPDATE USER
SET User_Type = 'ADMIN', Reg_Date = '29/8/2024', Appart_No = '65', City = 'Kiribathwehera' 
WHERE User_ID = 'U0011';

UPDATE USER
SET User_Type = 'EMPLOYEE', Reg_Date = '16/9/2022', Appart_No = '12', City = 'Kalutharagama' 
WHERE User_ID = 'U002';

DELETE FROM USER WHERE User_ID = 'U012';

CREATE TABLE USER_CONTACT(
User_ID varchar(45),
User_Contact_No varchar(45),
primary key(User_ID,User_Contact_No)
);
ALTER TABLE USER_CONTACT
ADD CONSTRAINT FOREIGN KEY (User_ID) REFERENCES USER(User_ID);

INSERT INTO USER_CONTACT VALUES ('U001', '774506161');
INSERT INTO USER_CONTACT VALUES ('U001', '572246145');
INSERT INTO USER_CONTACT VALUES ('U002', '722116995');
INSERT INTO USER_CONTACT VALUES ('U003', '728724600');
INSERT INTO USER_CONTACT VALUES ('U007', '71216785');
INSERT INTO USER_CONTACT VALUES ('U008', '522256780');

USE pet_adoption;
UPDATE USER_CONTACT
SET User_Contact_No = '011234567' 
WHERE User_ID = 'U007';


UPDATE USER_CONTACT
SET User_Contact_No = '0765432541' 
WHERE User_ID = 'U008';

DELETE FROM USER_CONTACT WHERE User_ID = 'U008';

CREATE TABLE PET (
    Pet_ID varchar(45) NOT NULL,
    User_ID varchar(45),
    Pet_Type varchar(10) NOT NULL,
    Pet_Name varchar(10) NOT NULL,
    Age varchar(10) NOT NULL,
    Breed varchar(50) NOT NULL,
    DateOfBirth varchar(10) NOT NULL,
    Availability varchar(10) NOT NULL,
    PRIMARY KEY (Pet_ID),
    FOREIGN KEY (User_ID) REFERENCES USER(User_ID)
);
INSERT INTO PET VALUES ('P001', NULL, 'Cat',  'Sam',   '4'  , 'Abyssinian',     '17/03/2020', 'Yes');
INSERT INTO PET VALUES ('P002', NULL, 'Dog',  'Jimmy', '3', 'Bulldog',      '17/03/2021', 'Yes');
INSERT INTO PET VALUES ('P003', 'U003', 'Dog',   'Humpy','4', 'Rottvialet',   '17/03/2020', 'No');
INSERT INTO PET VALUES ('P004', 'U004', 'Cat',   'Larse','6', 'Balinese',     '17/03/2018', 'No');
INSERT INTO PET VALUES ('P005', 'U007', 'Parrot','Kiw',  '1', 'Budgerigar',  '17/03/2023', 'No');
INSERT INTO PET VALUES ('P006', 'U008', 'Parrot','Prut', '2', 'Cockatiel',  '17/03/2022', 'No');
INSERT INTO PET VALUES ('P007', 'U010', 'Dog',   'Roxy', '5', 'Germen_Shepard','17/03/2019', 'Yes');
INSERT INTO PET VALUES ('P008', NULL, 'Cat',   'Morse','4', 'Persian',      '17/03/2020', 'Yes');
INSERT INTO PET VALUES ('P009', 'U013', 'Dog',   'Jann', '6', 'Germen_Shepard', '3/10/2021', 'Yes');
INSERT INTO PET VALUES ('P0010', NULL, 'Dog',   'KAL', '6', 'Germen_Shepard', '6/10/2021', 'Yes');



USE pet_adoption;

UPDATE PET
SET DateOfBirth = '29/8/2021', Pet_Name = 'Jessy'
WHERE Pet_ID = 'P009';

USE pet_adoption;

UPDATE PET
SET DateOfBirth = '5/6/2021', Pet_Name = 'KALI'
WHERE Pet_ID = 'P0010';

DELETE FROM PET WHERE Pet_ID = 'P0010';

create table EVENT(
	Event_ID varchar(100) not NULL,
    Event_Name varchar(100) not NULL,
    Event_Date varchar(100) not NULL,
    Location varchar(100),
    primary key(EVENT_ID)
);

INSERT INTO EVENT VALUES ('E001', 'Pet_Training_Mania', '14/5/2021', 'Ampara');
INSERT INTO EVENT VALUES ('E002', 'Pet_Palooza', '13/2/2025', 'Badulla');
INSERT INTO EVENT VALUES ('E003', 'Felina_Funday', '23/8/2024', 'NuwaraEliya');
INSERT INTO EVENT VALUES ('E004', 'Wagfest', '22/9/2024', 'NuwaraEliya');
INSERT INTO EVENT VALUES ('E005', 'Whisker_Wonderland', '25/12/2023', 'NuwaraEliya');
INSERT INTO EVENT VALUES ('E006', 'Wonder_Pets', '24/11/2026', 'Badulla');
INSERT INTO EVENT VALUES ('E007', 'Wonder_Pets with happy', '25/12/2026', 'Welimada');
USE pet_adoption;

UPDATE EVENT
SET Event_Date= '30/8/2021'
WHERE Event_ID = 'E001';

USE pet_adoption;

UPDATE EVENT
SET Location = 'Badulla'
WHERE Event_ID = 'E005';

DELETE FROM EVENT WHERE Event_ID = 'E007';


create table PARTICIPATE_EVENT(
	Event_ID varchar(100) not NULL,
    User_ID varchar(45) not NULL,
    Event_Date varchar(100) not NULL,
    primary key(EVENT_ID,USER_ID),
    FOREIGN KEY (User_ID) REFERENCES USER(User_ID),
     FOREIGN KEY (Event_ID) REFERENCES EVENT(Event_ID)
);

INSERT INTO PARTICIPATE_EVENT VALUES ('E001', 'U001','14/5/2021');
INSERT INTO PARTICIPATE_EVENT VALUES ('E001', 'U002','14/5/2021');
INSERT INTO PARTICIPATE_EVENT VALUES ('E002', 'U004','13/2/2025');
INSERT INTO PARTICIPATE_EVENT VALUES ('E002', 'U005','13/2/2025');
INSERT INTO PARTICIPATE_EVENT VALUES ('E003', 'U008','23/8/2024');
INSERT INTO PARTICIPATE_EVENT VALUES ('E005', 'U005', '25/12/2023');
INSERT INTO PARTICIPATE_EVENT VALUES ('E006', 'U003', '24/11/2026');

UPDATE PARTICIPATE_EVENT
SET Event_Date = '30/8/2021'
WHERE Event_ID = 'E001' AND  USER_ID = 'U002';

UPDATE PARTICIPATE_EVENT
SET Event_Date = '23/08/2021'
WHERE Event_ID = 'E006' AND  USER_ID = 'U003';


DELETE FROM  PARTICIPATE_EVENT WHERE Event_ID = 'E006' AND  USER_ID = 'U003' ;




create table VETANARY(
	VETANARY_ID varchar(45) not NULL,
    PET_ID varchar(45) not NULL,
    VET_NAME varchar(100) not NULL,
    DATE varchar(100) not NULL,
    primary key(VETANARY_ID),
    FOREIGN KEY (PET_ID) REFERENCES PET(PET_ID)
    
);

INSERT INTO VETANARY VALUES ('VET001', 'P001', 'SAMSON', '23/4/2012');
INSERT INTO VETANARY VALUES ('VET002', 'P005', 'SHEENA', '22/3/2013');
INSERT INTO VETANARY VALUES ('VET003', 'P007', 'SAMSON', '14/5/2014');
INSERT INTO VETANARY VALUES ('VET004', 'P001', 'SHEENA', '16/7/2022');
INSERT INTO VETANARY VALUES ('VET005', 'P002', 'JONNY' , '15/3/2024');
INSERT INTO VETANARY VALUES ('VET006', 'P009', 'JONNY' , '10/3/2021');
INSERT INTO VETANARY VALUES ('VET007', 'P005', 'JONNY' , '11/3/2021');

USE pet_adoption;
UPDATE VETANARY 
SET   VET_NAME='JONNY' , DATE = '15/7/2022'
WHERE VETANARY_ID ='VET004'  ;


USE pet_adoption;
UPDATE VETANARY 
SET   VET_NAME='SAMSON' , DATE = '11/3/2021'
WHERE VETANARY_ID ='VET007'  ;

DELETE FROM  VETANARY   WHERE  VETANARY_ID= 'VET007';

create table GET_MEDICINE(
	
    PET_ID varchar(45) not NULL,
    Medicine varchar(100) not NULL,
    DATE varchar(100) not NULL,
    primary key(PET_ID,Medicine),
     FOREIGN KEY (PET_ID) REFERENCES PET(PET_ID)
);

INSERT INTO GET_MEDICINE VALUES ('P001', 'LANTI', '23/4/2012');
INSERT INTO GET_MEDICINE VALUES ('P001', 'KIMSI', '23/4/2012');
INSERT INTO GET_MEDICINE VALUES ('P005', 'LANTI', '15/3/2024');
INSERT INTO GET_MEDICINE VALUES ('P007', 'NULL', '14/5/2014');
INSERT INTO GET_MEDICINE VALUES ('P001', 'NULL', '23/4/2012');
INSERT INTO GET_MEDICINE VALUES ('P002', 'KANON', '15/3/2024');
INSERT INTO GET_MEDICINE VALUES ('P005', 'Kainthu', '18/3/2024');

USE pet_adoption;
UPDATE GET_MEDICINE
SET   DATE = '24/4/2012' 
WHERE  PET_ID = 'P001' AND Medicine = 'LANTI';

UPDATE GET_MEDICINE
SET   DATE = '24/4/2012' 
WHERE  PET_ID = 'P005' AND Medicine = 'Kinthu';

DELETE FROM  GET_MEDICINE   WHERE  PET_ID= 'P005' AND Medicine = 'Kinthu';

create table TRANSACTION(
	User_ID varchar(45) not NULL,
    Vetanary_ID varchar(45) not NULL,
    Trans_ID varchar(45) not NULL,
    Amount varchar(100),
    Trans_Type varchar(100),
    Trans_Date varchar(100),
    primary key(Trans_ID),
      FOREIGN KEY (User_ID) REFERENCES USER(User_ID),
     FOREIGN KEY (Vetanary_ID) REFERENCES VETANARY(VETANARY_ID)
);
ALTER TABLE TRANSACTION
MODIFY COLUMN Vetanary_ID varchar(45) DEFAULT NULL;

INSERT INTO TRANSACTION VALUES ('U010', 'VET003', 'TR1', '5000', 'VETANARY', '14/05/2022');
INSERT INTO TRANSACTION VALUES ('U007', 'VET002', 'TR2', '8000', 'VETANARY', '25/09/2013');
INSERT INTO TRANSACTION VALUES ('U008', NULL, 'TR3', '50000',  'ADOPTION', '14/05/2022');
INSERT INTO TRANSACTION VALUES ('U003', NULL, 'TR4', '600000', 'ADOTION' , '23/12/2015');
INSERT INTO TRANSACTION VALUES ('U008', NULL, 'TR6', '500000', 'DONATION', '24/11/2016');
INSERT INTO TRANSACTION VALUES ('U006', NULL, 'TR7', '200000', 'DONATION', '13/10/2024');
INSERT INTO TRANSACTION VALUES ('U014', NULL, 'TR8', '25000', 'ADOPTION', '17/3/2023');
INSERT INTO TRANSACTION VALUES ('U010', NULL, 'TR10', '45000', 'ADOPTION', '13/2/2023');
INSERT INTO TRANSACTION VALUES ('U013', NULL, 'TR9', '35000', 'ADOPTION', '10/3/2021');
INSERT INTO TRANSACTION VALUES ('U007', NULL, 'TR11', '56000', 'ADOPTION', '24/10/2024');
INSERT INTO TRANSACTION VALUES ('U006', NULL, 'TR12', '76000', 'ADOPTION', '27/10/2024');

USE pet_adoption;

UPDATE TRANSACTION
SET Trans_Date  = '24/12/2015', Amount = '60000'
WHERE Trans_ID = 'TR4';

USE pet_adoption;

UPDATE TRANSACTION
SET Trans_Date  = '10/4/2021', Amount = '40000'
WHERE Trans_ID = 'TR9';

DELETE FROM TRANSACTION WHERE Trans_ID = 'TR12';

create table MEDICAL_HISTORY(
	History_ID varchar(45) not NULL,
    Pet_ID varchar(45) not NULL,
    Pre_Date varchar(100) not NULL,
    primary key(History_ID),
    FOREIGN KEY (PET_ID) REFERENCES PET(PET_ID)
    
);

INSERT INTO Medical_History VALUES ('H001', 'P003', '21/2/2022');
INSERT INTO Medical_History VALUES ('H002', 'P003', '20/3/2020');
INSERT INTO Medical_History VALUES ('H003', 'P001', '22/4/2021');
INSERT INTO Medical_History VALUES ('H004', 'P007', '23/4/2022');
INSERT INTO Medical_History VALUES ('H005', 'P005', '20/5/2020');
INSERT INTO Medical_History VALUES ('H006', 'P006', '20/4/2012');
INSERT INTO Medical_History VALUES ('H007', 'P008', '23/8/2018');
INSERT INTO Medical_History VALUES ('H008', 'P002', '25/8/2019');

USE pet_adoption;

UPDATE Medical_History
SET  Pre_Date= '21/4/2012'
WHERE History_ID = 'H006';

UPDATE Medical_History
SET  Pre_Date= '26/4/2019'
WHERE History_ID = 'H008';

DELETE FROM Medical_History WHERE History_ID= 'H008';

create table HISTORY_DETAIL(
	History_ID varchar(45) not NULL,
    DETAIL varchar(100) not NULL,
    primary key(History_ID,DETAIL),
    FOREIGN KEY (HISTORY_ID) REFERENCES MEDICAL_HISTORY(HISTORY_ID)
);

INSERT INTO HISTORY_DETAIL VALUES ('H001', 'NULL OF DISEASES');
INSERT INTO HISTORY_DETAIL VALUES ('H002', 'NULL OF DISEASES');
INSERT INTO HISTORY_DETAIL VALUES ('H003', 'HAS DIABATES');
INSERT INTO HISTORY_DETAIL VALUES ('H004', 'HAS JIMYTI');
INSERT INTO HISTORY_DETAIL VALUES ('H005', 'HAS QUAR');
INSERT INTO HISTORY_DETAIL VALUES ('H006', 'HAS LANG');
INSERT INTO HISTORY_DETAIL VALUES ('H007', 'NULL OF DISEASES');
USE pet_adoption;

UPDATE HISTORY_DETAIL
SET DETAIL = 'HAS ALL THEM'
WHERE History_ID = 'H007';


UPDATE HISTORY_DETAIL
SET DETAIL = 'NULL'
WHERE History_ID = 'H002';


DELETE FROM HISTORY_DETAIL  WHERE History_ID= 'H007';

create table SHELTER(
	SHELTER_ID varchar(100) not NULL,
    USER_ID varchar(45) not NULL,
    SHELTER_NAME varchar(100) not NULL,
    SHEELTER_LOCATION varchar(100) not NULL,
    primary key(SHELTER_ID,USER_ID),
    FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
);

INSERT INTO SHELTER VALUES ('SHEL001', 'U001', 'DIGG PLAN(AMPARA)', 'AMPARA');
INSERT INTO SHELTER VALUES ('SHEL002', 'U002', 'DOGII PLAN(BADULLA)', 'BADULLA');
INSERT INTO SHELTER VALUES ('SHEL003', 'U006', 'DOGII PLAN(CHILAW)', 'CHILAW');
INSERT INTO SHELTER VALUES ('SHEL002', 'U005', 'DIGII PLAN(BADULLA)', 'BADULLA');
INSERT INTO SHELTER VALUES ('SHEL005', 'U0011', 'DIGII PLAN(Hokandara)', 'HOKANDARA');
INSERT INTO SHELTER VALUES ('SHEL002', 'U014', 'DIGII PLAN(BADULLA)', 'BADULLA');

USE pet_adoption;
UPDATE SHELTER
SET   SHEELTER_LOCATION='BADULLA UP ROAD'
WHERE  SHELTER_ID= 'SHEL002'AND USER_ID  = 'U005';

UPDATE SHELTER
SET   SHEELTER_LOCATION='HORAANA'
WHERE  SHELTER_ID= 'SHEL005'AND USER_ID  = 'U0011';

DELETE FROM   SHELTER WHERE SHELTER_ID= 'SHEL005'AND USER_ID  = 'U0011';

create table FINANCIAL(
	TRANS_ID varchar(45) not NULL,
    User_ID varchar(45) not NULL,
    AMOUNT varchar(100) not NULL,
    primary key(TRANS_ID,USER_ID),
     FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID),
      FOREIGN KEY (TRANS_ID) REFERENCES TRANSACTION(TRANS_ID)
);

INSERT INTO FINANCIAL VALUES ('TR1', 'U010', '5000');
INSERT INTO FINANCIAL VALUES ('TR2', 'U007', '8000');
INSERT INTO FINANCIAL VALUES ('TR3', 'U008', '50000');
INSERT INTO FINANCIAL VALUES ('TR4', 'U003', '600000');
INSERT INTO FINANCIAL VALUES ('TR11', 'U007', '56000');
INSERT INTO FINANCIAL VALUES ('TR7', 'U003', '200000');
INSERT INTO FINANCIAL VALUES ('TR9', 'U013', '35000');


USE pet_adoption;
UPDATE FINANCIAL
SET   AMOUNT='60000'
WHERE  TRANS_ID= 'TR4'AND USER_ID  = 'U003';

UPDATE FINANCIAL
SET   AMOUNT='40000'
WHERE  TRANS_ID= 'TR9'AND USER_ID  = 'U013';

DELETE FROM  FINANCIAL  WHERE  TRANS_ID= 'TR9'AND USER_ID  = 'U013' ;

create table VET_VISIT(
	VETVISIT_ID varchar(45) not NULL,
    DATE varchar(100) not NULL,
    VET_NAME varchar(100) not NULL,
    VETANARY_ID varchar(45) not NULL,
    PET_ID varchar(45) not NULL,
    primary key(VETVISIT_ID),
     FOREIGN KEY (PET_ID) REFERENCES PET(PET_ID),
      FOREIGN KEY (VETANARY_ID) REFERENCES VETANARY(VETANARY_ID)
);
ALTER TABLE VET_VISIT
MODIFY COLUMN Vetanary_ID varchar(45) DEFAULT NULL;


INSERT INTO VET_VISIT VALUES ('VSI001', '21/2/2023', 'SAMSON','VET001', 'P001');
INSERT INTO VET_VISIT VALUES ('VSI002', '22/4/2020', 'NULL',NULL, 'P004');
INSERT INTO VET_VISIT VALUES ('VSI003', '14/5/2014', 'SAMSON','VET003', 'P007');
INSERT INTO VET_VISIT VALUES ('VSI004', '26/3/2018', 'SHEENA','VET002', 'P005');
INSERT INTO VET_VISIT VALUES ('VSI005', '14/5/2022', 'NULL',NULL, 'P006');
INSERT INTO VET_VISIT VALUES ('VSI006', '16/7/2022', 'SHEENA','VET004', 'P001');


USE pet_adoption;
UPDATE VET_VISIT
SET   DATE = '6/7/2022' , VET_NAME = 'JONNY'
WHERE    VETVISIT_ID ='VSI006';


UPDATE VET_VISIT
SET   DATE = '12/3/2021' , VET_NAME = 'SHEENA'
WHERE    VETVISIT_ID ='VSI007';

DELETE FROM  VET_VISIT  WHERE  VETVISIT_ID ='VSI006';

create table VISIT_REASON(
	
    VETVISIT_ID  varchar(45) not NULL,
    Visit_reason varchar(100) not NULL,
    DATE varchar(100) not NULL,
    
    primary key(VETVISIT_ID,Visit_reason),
    FOREIGN KEY (VETVISIT_ID) REFERENCES VET_VISIT(VETVISIT_ID)
    
    
);



INSERT INTO VISIT_REASON VALUES ('VSI001', 'MEDICINE','21/2/2023');
INSERT INTO VISIT_REASON VALUES ('VSI002', 'ADOPT', '22/4/2020');
INSERT INTO VISIT_REASON VALUES ('VSI003', 'MEDICINE','14/5/2014');
INSERT INTO VISIT_REASON VALUES ('VSI004', 'MEDICINE','26/3/2018');
INSERT INTO VISIT_REASON VALUES ('VSI005', 'TO WATCH','14/5/2022');
INSERT INTO VISIT_REASON VALUES ('VSI004', 'TO WATCH','26/3/2018');


UPDATE VISIT_REASON
SET   DATE = '21/02/2023'
WHERE    VETVISIT_ID ='VSI001' AND Visit_reason='MEDICINE';

UPDATE VISIT_REASON
SET   DATE = '26/03/2018'
WHERE    VETVISIT_ID ='VSI004' AND Visit_reason='TO WATCH';

DELETE FROM     VISIT_REASON WHERE  VETVISIT_ID ='VSI004';


-- SIMPLE QUERIES --
-- Retrieve al tuples from USER table----
SELECT* FROM USER;

-- Retrieve data of user_id = U003 --
SELECT * FROM PET WHERE User_ID = 'U003';


-- Find the pet_type of dogs --
SELECT* FROM PET WHERE Pet_TYPE = 'Dog';

 
-- Sorting the age by disending order --
SELECT * FROM PET ORDER BY Age DESC;

-- like function --
SELECT * FROM USER WHERE Email LIKE '%gmail%';

--  COUNT THE ROWS OF USER --
SELECT COUNT(*) FROM USER;

-- Find the maximum Age --
SELECT MAX(Age) FROM PET;

 -- SELECT the pet s age from 4 to 6 --
 SELECT * FROM PET WHERE Age BETWEEN 2 AND 6;
 
 -- 
 
 -- COMPLEX QUERIES --
 
 -- Sum of the transaction --
SELECT SUM(Amount) FROM TRANSACTION;

-- DEVISION ( Find the user who has adopted and participate the event) 
 SELECT DISTINCT u.Name
 FROM USER u WHERE EXISTS (SELECT *
 FROM PET p
 WHERE P.User_ID = u.User_ID) AND EXISTS (SELECT *
 FROM PARTICIPATE_EVENT pe
 WHERE pe.User_ID = u.User_ID);
 
 -- Union Operation --
 (
    SELECT 'ADOPTION' AS Transaction_Type, Trans_ID, User_ID, Amount, Trans_Date
    FROM TRANSACTION
    WHERE Trans_Type = 'ADOPTION'
)
UNION
(
    SELECT 'DONATION' AS Transaction_Type, Trans_ID, User_ID, Amount, Trans_Date
    FROM TRANSACTION
    WHERE Trans_Type = 'DONATION'
)
ORDER BY Trans_Date DESC;
 

 -- create a view and union operation --
 -- Create UV1 view
CREATE VIEW UV1 AS
SELECT User_ID, Reg_Date
FROM USER
WHERE User_Type = 'EMPLOYEE';

-- Create UV2 view
CREATE VIEW UV2 AS
SELECT User_ID, Reg_Date
FROM USER
WHERE User_Type = 'ADOPTER';

 -- Perform union operation
SELECT * FROM UV1
UNION
SELECT * FROM UV2;

-- Aggrregation complex query --

-- Find the count of who have adopted more than one pet --
SELECT User_ID
FROM(SELECT User_ID, COUNT(*) AS Num_Adoptions
FROM TRANSACTION 
WHERE Trans_Type = 'ADOPTION'
Group by User_ID)
AS Adoption_Count
WHERE Num_Adoptions >1;

-- in this case when i use intersect keyword then can't exucute that's why use inner join as intersect
SELECT DISTINCT U1.Name 
FROM 
    (SELECT U.Name 
     FROM USER U 
     INNER JOIN PARTICIPATE_EVENT PE ON U.User_ID = PE.User_ID) AS U1
INNER JOIN 
    (SELECT U.Name 
     FROM USER U 
     INNER JOIN PET P ON U.User_ID = P.User_ID) AS U2
ON U1.Name = U2.Name;



-- SET DIFFERENCE--
SELECT User_ID FROM USER 
EXCEPT 
SELECT User_ID FROM PARTICIPATE_EVENT;

-- JOIN --
-- CREATE VIEWS --

-- VIEW FOR USERS --

CREATE VIEW View_Users AS SELECT User_ID , Name, City FROM USER;

-- View for Pets --

CREATE VIEW View_Pets AS SELECT Pet_ID ,User_ID,Pet_Name, Pet_Type FROM PET;

-- View for PetEvents --

CREATE VIEW View_PetEvents AS SELECT Event_ID,Event_Name,Location FROM EVENT;

-- INNER JOIN --

SELECT VU.Name , VP.Pet_Name FROM View_Users VU INNER JOIN View_Pets VP ON VU.User_ID = VP.User_ID;

-- LEFT OUTER JOIN --

SELECT VU.Name, VP.Pet_Name, VP.Pet_Type FROM View_Users VU LEFT JOIN View_Pets VP on VU.User_ID = VP.User_ID;

-- RIGTH OUTER JOIN --

SELECT VU.Name, VP.Pet_Name , VP.Pet_ID FROM View_Users VU RIGHT JOIN View_Pets VP ON VU.User_ID = VP.User_ID;

-- FULL OUTER JOIN

SELECT VU.Name, VP.Pet_Name, VP.Pet_Type FROM View_Users VU LEFT JOIN View_Pets VP on VU.User_ID = VP.User_ID
UNION
SELECT VU.Name, VP.Pet_Name , VP.Pet_ID FROM View_Users VU RIGHT JOIN View_Pets VP ON VU.User_ID = VP.User_ID;

-- NATURAL JOIN --

SELECT VU.Name , VP.Pet_Name FROM View_Users VU JOIN View_Pets VP ON VU.User_ID = VP.User_ID;

-- OUTER UNION --
SELECT User_ID,Name, NULL AS Event_Name, NULL AS Location FROM View_Users UNION ALL SELECT NULL AS User_ID, NULL AS Name, Event_Name, Location FROM View_PetEvents;

-- Nested queries --
-- Nestedquery with Aggregation function and set difference --

SELECT DISTINCT User_ID FROM USER WHERE User_ID NOT IN (SELECT User_ID FROM TRANSACTION);

-- Nested query with Join and Projection --

SELECT Name, City FROM (SELECT User_ID,Name,City FROM USER) AS U JOIN (SELECT User_ID FROM PET) AS P ON U.User_ID = P.User_ID;

--  Nested query with aggreation function and division --

SELECT User_ID FROM USER WHERE EXISTS (SELECT 1  FROM PET WHERE Pet_Type = 'Cat' AND PET.User_ID = USER.User_ID) AND NOT EXISTS (SELECT 1 User_ID FROM PET WHERE Pet_Type = 'Dog' AND PET.User_ID = USER.User_ID );


-- tuning
-- tuning 1 (sum of the transactions)
-- original
SELECT SUM(Amount) FROM TRANSACTION;

CREATE INDEX idx_transaction_amount ON TRANSACTION(Amount);

-- tuned
EXPLAIN SELECT SUM(Amount) FROM TRANSACTION;

-- tuning 2 (user whose has adopted and participated events)
-- original
EXPLAIN SELECT DISTINCT u.Name
FROM USER u 
WHERE EXISTS (
    SELECT * FROM PET p WHERE p.User_ID = u.User_ID
) 
AND EXISTS (
    SELECT * FROM PARTICIPATE_EVENT pe WHERE pe.User_ID = u.User_ID
);

CREATE INDEX idx_pet_user_id ON PET(User_ID);
CREATE INDEX idx_participate_event_user_id ON PARTICIPATE_EVENT(User_ID);

-- TUNED
EXPLAIN SELECT DISTINCT u.Name
FROM USER u 
WHERE EXISTS (
    SELECT * FROM PET p WHERE p.User_ID = u.User_ID
) 
AND EXISTS (
    SELECT * FROM PARTICIPATE_EVENT pe WHERE pe.User_ID = u.User_ID
);


-- TUNING 3 (union of transactions underadoption and donations)
-- ORIGINAL
(
    SELECT 'ADOPTION' AS Transaction_Type, Trans_ID, User_ID, Amount, Trans_Date
    FROM TRANSACTION
    WHERE Trans_Type = 'ADOPTION'
) UNION (
    SELECT 'DONATION' AS Transaction_Type, Trans_ID, User_ID, Amount, Trans_Date
    FROM TRANSACTION
    WHERE Trans_Type = 'DONATION'
)
ORDER BY Trans_Date DESC;

CREATE INDEX idx_transaction_trans_type_trans_date ON TRANSACTION(Trans_Type, Trans_Date);

-- TUNED
EXPLAIN 
(
    SELECT 'ADOPTION' AS Transaction_Type, Trans_ID, User_ID, Amount, Trans_Date
    FROM TRANSACTION
    WHERE Trans_Type = 'ADOPTION'
) UNION (
    SELECT 'DONATION' AS Transaction_Type, Trans_ID, User_ID, Amount, Trans_Date
    FROM TRANSACTION
    WHERE Trans_Type = 'DONATION'
)
ORDER BY Trans_Date DESC;

-- TUNING 4 (creation pf union of views)
-- ORIGINAL
EXPLAIN SELECT * FROM UV1 UNION SELECT * FROM UV2;

CREATE INDEX idx_user_user_type ON USER(User_Type);

-- TUNED
EXPLAIN SELECT * FROM UV1 UNION SELECT * FROM UV2;

-- TUNING 5 (cont how many userswho have adopt more than one pet)
-- ORIGINAL
EXPLAIN SELECT User_ID FROM (
    SELECT User_ID, COUNT(*) AS Num_Adoptions FROM TRANSACTION 
    WHERE Trans_Type = 'ADOPTION' GROUP BY User_ID
) AS Adoption_Count WHERE Num_Adoptions > 1;

CREATE INDEX idx_transaction_user_id_type ON TRANSACTION(User_ID, Trans_Type);

-- TUNED
EXPLAIN SELECT User_ID FROM (
    SELECT User_ID, COUNT(*) AS Num_Adoptions FROM TRANSACTION 
    WHERE Trans_Type = 'ADOPTION' GROUP BY User_ID
) AS Adoption_Count WHERE Num_Adoptions > 1;


-- TUNING 6 
-- Already INDEXED (idx_pet_user_id,idx_participate_event_user_id)
-- TUNED
EXPLAIN SELECT U.Name 
FROM USER U 
INNER JOIN PARTICIPATE_EVENT PE ON U.User_ID = PE.User_ID
INNER JOIN PET P ON U.User_ID = P.User_ID;

-- TUNING 7
-- Already INDEXED (idx_user_user_id ,idx_participate_event_user_id) 
EXPLAIN SELECT User_ID FROM USER 
WHERE User_ID NOT IN (SELECT User_ID FROM PARTICIPATE_EVENT);

-- TUNING 8
-- Already INDEXED (idx_user_user_id,idx_pet_user_id)
EXPLAIN SELECT VU.Name, VP.Pet_Name 
FROM View_Users VU 
JOIN View_Pets VP ON VU.User_ID = VP.User_ID;

-- TUNING 9
-- Already INDEXED(idx_user_user_id,) 
EXPLAIN SELECT User_ID, Name, NULL AS Event_Name, NULL AS Location FROM View_Users 
UNION ALL 
SELECT NULL AS User_ID, NULL AS Name, Event_Name, Location FROM View_PetEvents;

-- tuning 10
-- Already indexed{idx_pet_user_id on PET(User_ID)}
CREATE INDEX idx_pet_pet_type ON PET(Pet_Type);

-- tuned query
EXPLAIN SELECT User_ID FROM USER WHERE EXISTS (SELECT 1 FROM PET WHERE Pet_Type ='Cat' AND PET.User_ID=USER.User_ID) AND NOT EXISTS (SELECT 1 FROM PET WHERE Pet_Type = 'Dog' AND PET.User_ID = USER.User_ID);