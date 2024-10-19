CREATE TABLE EVENTS ( Events_name varchar(100), date_&_time TIMESTAMP, ID int PRIMARY KEY, Events_Location varchar(100), Events_duration int, Events_status varchar(10) );

CREATE TABLE NOTIFICATION ( Content varchar(500), Notification_time TIMESTAMP, ID int serial PRIMARY KEY, );

CREATE TABLE ATTENDEE ( Seat_number int, Arrival_time TIMESTAMP, ID int serial PRIMARY KEY );

CREATE TABLE USER ( First_name varchar(70), Last_name varchar(80), ID int serial PRIMARY KEY, Time_Registered TIMESTAMP, Phone_number int, Home_address varchar(60), Email_address varchar(90), );

CREATE TABLE Event_User ( ID int serial PRIMARY KEY, );

ALTER TABLE Event_User ADD FOREIGN KEY (USER.ID) REFERENCES USER(ID);

ALTER TABLE Event_User ADD FOREIGN KEY (EVENT.ID) REFERENCES EVENTS(ID);

ALTER TABLE NOTIFICATION ADD FOREIGN KEY (EVENT.ID) REFERENCES EVENTS(ID);

ALTER TABLE NOTIFICATION ADD FOREIGN KEY (USER.ID) REFERENCES USER(ID);

ALTER TABLE ATTENDEE ADD FOREIGN KEY (EVENT.ID) REFERENCES EVENTS(ID);

ALTER TABLE ATTENDEE ADD FOREIGN KEY (USER.ID) REFERENCES USER(ID);
INSERT INTO USER (First_name, Last_name, ID, Time_Registered, Phone_number, Home_address, Email_address) VALUES ( 'Terrance' , 'Tenkorang' , 1 , 15:00 , 0558687744 , 'Tettey Okoe Street' , 'terranten37@gmail.com' ) UPDATE USER

SET Home_address = 'Bubuashie' WHERE ID = 1; 
DELETE FROM USER WHERE Phone_number = 0558687744; 