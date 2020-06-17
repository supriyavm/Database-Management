CREATE DATABASE DBPROJECT;
USE DBPROJECT;



Select*from Organizer;

Insert into Organizer values('o_1', 'supriya','murty','HR','L&T','6175469875');
Insert into Organizer values('o_2', 'shruti','walawalkar','Accounts','L&T','6175464512');
Insert into Organizer values('o_3', 'SAYLI','BHUTKAR','FINANCE','L&T','617541242');


SELECT*FROM ATTENDEE;

create table attendee(attendee_id varchar(10) primary key, attendee_firstname varchar(45) not null,
 attendee_lastname varchar(45), attendee_emailid varchar(45), attendee_dept varchar(45),attendee_contact char(15),
 attendee_event_id varchar(10), attendee_seat_id varchar(10), foreign key (attendee_event_id) references events(event_id));
 
INSERT INTO ATTENDEE VALUES('A_1', 'SAYLI', 'BHUTKAR','bhutkar.s@gmail.com','accounts','6174589632','e_1','1');
INSERT INTO ATTENDEE VALUES('A_2', 'Shruti', 'Walawalkar','walawalkar.s@gmail.com','HR','6174589631','e_2','2');
INSERT INTO ATTENDEE VALUES('A_3', 'PRANALI', 'SHETTY','shetty.p@gmail.com','FINANCE','6174589612','e_8','3');
INSERT INTO ATTENDEE VALUES('A_4', 'shivani', 'kulkarni','kulkarni.s@gmail.com','accounts','6174587854','e_6','4');
INSERT INTO ATTENDEE VALUES('A_5', 'ashok', 'Sharma','sharma@gmail.com','FINANCE','6174545112','e_7','5');



Select*from `Events`;

insert into Events VALUES('E_1','Corporate','missionmain','Boston','MA','2018-07-18 10:00:00','2018-07-18 3:00:00','O_1');
insert into Events VALUES('E_2','Social','parkdrive','Boston','MA','2018-05-10 12:00:00','2018-05-12 7:00:00','O_1');
insert into Events VALUES('E_3','Sponsored','missionmain','Boston','MA','2018-01-05 09:00:00','2018-01-06 05:00:00','O_2');
insert into Events VALUES('E_4','Corporate','PRUDENTIAL','Boston','MA','2018-07-18 10:00:00','2018-07-18 3:00:00','O_2');
insert into Events VALUES('E_5','Corporate','COPLEY','Boston','MA','2018-02-1 10:00:00','2018-02-5 5:00:00','O_3');
insert into Events VALUES('E_6','Social','parkdrive','Boston','MA','2018-05-10 9:00:00','2018-010-12 12:00:00','O_2');
insert into Events VALUES('E_7','Sponsored','PRUDENTIAL','Boston','MA','2018-01-05 09:00:00','2018-01-06 05:00:00','O_2');
insert into Events VALUES('E_8','Social','COPLEY','Boston','MA','2018-05-10 12:00:00','2018-05-12 7:00:00','O_3');
insert into Events VALUES('E_9','Sponsored','MISSION HILL','Boston','MA','2018-09-05 10:00:00','2018-09-15 05:00:00','O_1');


Update  events set event_type='social' where event_id='E_3';
UPDATE EVENTS SET STATE="NYC",EVENT_STARTTIME="2018-01-30 09:00:00", EVENT_ENDTIME="2018-02-02 5:00:00" WHERE EVENT_ID="E_3";
update events set event_starttime='2018-08-08 10:00:00'  where event_id='e_6';
update events set event_endtime='2018-08-10 12:00:00' where event_id='e_6';
Select* from Corporate_event;

create table Corporate_event(corporate_id varchar(10) primary key, event_id varchar(10),event_name varchar(45),attendee_id varchar(10),  foreign key(event_id)references events(event_id),
foreign key (attendee_id) references attendee(attendee_id));

Insert into Corporate_event values('c_1','e_1', 'finanace Meeting','a_1');
Insert into Corporate_event values('c_2','e_1', 'Conference','a_2');
Insert into Corporate_event values('c_3','e_4', 'Seminar','a_1');
Insert into Corporate_event values('c_4','e_4', 'MEETING','a_2');
Insert into Corporate_event values('c_5','e_5', 'DISCUSSION','a_1');

 
 
Select* from social_events;
DROP TABLE SOCIAL_EVENTS;
Create table Social_events(Social_id varchar(10),Event_id varchar(10), Event_name varchar(45),
Max_capacity varchar(45), Entree_fee varchar(45),TOTAL VARCHAR(45), Attendee_id varchar(10), 
 Foreign key(Event_id) references Events(Event_id),  Foreign key(Attendee_id) references Attendee(Attendee_id));
 
INSERT INTO SOCIAL_EVENTS VALUES('S_1','E_2','MR.John Birthday','200','10','0','a_1');
INSERT INTO SOCIAL_EVENTS VALUES('S_2','E_2','MR.sehgal Farewell','100','20','0','a_2');
INSERT INTO SOCIAL_EVENTS VALUES('S_3','E_8',' management event','300','5','0','a_3');
INSERT INTO SOCIAL_EVENTS VALUES('S_4','E_6','MR. Delly Birthday Party','200','10','0','a_3');

 
 
Select*from spon_events;
DROP table spon_events;
Create table Spon_events(Spone_id varchar(10), spon_id varchar(10) not null,Event_id varchar(10), Event_name varchar(45),
Max_capacity varchar(45), Entree_fee varchar(45),TOTAL VARCHAR(45), Attendee_id varchar(10),  
Foreign key(Event_id) references Events(Event_id),  Foreign key(Attendee_id) references Attendee(Attendee_id),
Foreign key (Spon_id) references Spon_details(Spon_id));

INSERT INTO Spon_EVENTS VALUES('Sp_1','spon_1','E_3','Employment management','200','10','0','a_3');
INSERT INTO Spon_EVENTS VALUES('Sp_2','SPON_3','E_3','seminar on BitCoin','100','10','0','a_2');
INSERT INTO Spon_EVENTS VALUES('Sp_3','spon_1','E_3','Conference for human welfare','300','5','0','a_2');
INSERT INTO Spon_EVENTS VALUES('Sp_3','spon_1','E_7','INAUGRATION','300','5','0','a_3');
INSERT INTO Spon_EVENTS VALUES('Sp_3','spon_1','E_9','SEMINAR ON MANAGEMENT','300','5','0','a_1');

create table spon_details(spon_id varchar(10) primary key not null,spon_name varchar(45) not null, 
Spon_email varchar(45) not null, Spon_contact char(15) not null);
 
 select* from spon_details;

 Insert into spon_details values('spon_1','SALONI CHAUHAN', 'chauhan.s@gmail.com','3215489667');
Insert into spon_details values('spon_2','Rashi Dhariwal', 'dhariwal.r@gmail.com','3215489747');
Insert into spon_details values('spon_3','Swarna Murty', 'murty.s@gmail.com','3215487456');

Create table Attendee_account(Attendee_account_id varchar(10)  primary key, 
Attendee_id varchar(10),
Bank_name VARCHAR(45) NOT NULL, Ifsc_code varchar(45)  not null,
 Foreign key (Attendee_id) references Attendee(Attendee_id));
 
 select*from attendee_account;

 
 insert into attendee_account values('SB101','A_1','SANTANDER','san2210');
  insert into attendee_account values('PS102','A_3','BOFA','bofa210');
   insert into attendee_account values('SW103','A_2','SANTANDER','san2220');
   insert into attendee_account values('sk104','a_4','bofa','bofa1000');
     insert into attendee_account values('as105','a_5','discover','dis1001');

Select * from Seat_booking;

Create table Seat_booking(Seat_id int primary key, Event_id varchar(10) not null, 
Event_name varchar(45) not null, Attendee_account_id varchar(10) not null,Foreign key (Event_id) references Events(Event_id),
Foreign key (Attendee_account_id) references Attendee_account(Attendee_account_id));

Insert into Seat_booking values(1 ,'e_1','Finance meeting','SB101');

Insert into Seat_booking values(2,'e_2','MR.Sehgal farewell','Sw103');
Insert into Seat_booking values(3,'e_2','MR.Sehgal farewell','PS102');
Insert into Seat_booking values(4,'e_3','Seminar On Bitcoin','Sw103');
Insert into Seat_booking values(5,'e_3','Seminar On Bitcoin','as105');
Insert into Seat_booking values(6,'e_5','conference','sk104');
Insert into Seat_booking values(7,'e_4','meeting','PS102');

 Create table Booking_log( Seat_id int,Event_id varchar(10) not null,Booked_date date,Booked_by varchar(50));
 select* from Booking_log;


 
DELIMITER //

CREATE TRIGGER tr_1_Booking_log
AFTER INSERT
   ON Seat_Booking FOR EACH ROW

BEGIN

   DECLARE vUser varchar(50);

   -- Find username of person performing the INSERT into table
   SELECT USER() INTO vUser;

   -- Insert record into audit table
   INSERT INTO Booking_log
   ( Seat_id,
   Event_id,
     Booked_date,
     Booked_by)
   VALUES
   ( new.Seat_id,
   new.Event_id,
     SYSDATE(),
     vUser );

END; //
DELIMITER ;



DELIMITER //
Create trigger Check_booking
Before Insert on seat_booking
for Each Row

BEGIN
IF NEW.seat_id in(
select Seat_booking.Seat_id
           
From Seat_booking 
		
where (NEW.Seat_id = Seat_booking.Seat_id)
)
        
        
THEN 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT= 'SEAT IS  ALREADY BOOKED FOR THIS EVENT';
END IF;
          
END; //
DELIMITER ;
          
          


select* from Event_update;

Create table Event_update(ID int  Auto_increment primary key, Event_id  varchar(10) not null,Event_type varchar(45),
Street varchar(45), City varchar(45),
State varchar(45),Event_starttime datetime, Event_endtime datetime,
Changed_time datetime default null, Action Varchar(50) default null);
 
 CREATE VIEW CORPORATE_LOG AS
SELECT organizer.Org_lastname,Org_firstname,organizer.Org_contact, Events.event_type,Events.street AS EVENTSTREET, 
Events.city AS EVENTCITY,
 Events.state as EVENTSTATE, Events.event_starttime AS STARTTIME,corporate_event.corporate_id,
CORPORATE_event.EVENT_NAME as CORPORATE_EVENT
FROM Organizer 
 INNER JOIN EVENTS ON organizer.org_id= events.Org_id
 INNER JOIN CORPORATE_EVENT ON CORPORATE_event.EVENT_ID= EVENTs.EVENT_ID;
 
SELECT ORG_LASTNAME,ORG_FIRSTNAME,ORG_CONTACT,EVENT_TYPE,
EVENTSTREET,EVENTCITY,EVENTSTATE,STARTTIME,CORPORATE_ID,CORPORATE_EVENT FROM CORPORATE_LOG;

CREATE VIEW SOCIAL_EVENTLOG AS
SELECT ORGANIZER.ORG_LASTNAME,ORGANIZER.ORG_FIRSTNAME,ORGANIZER.ORG_CONTACT,EVENTS.EVENT_ID, EVENTS.EVENT_TYPE, EVENTS.EVENT_STARTTIME,
SOCIAL_EVENTS.SOCIAL_ID,SOCIAL_EVENTS.EVENT_NAME AS SOCIAL_EVENT,
SOCIAL_EVENTS.MAX_CAPACITY AS MAXCAPACITY_FOR_SOCIAL_EVENTS,SOCIAL_EVENTS.ATTENDEE_ID
FROM ORGANIZER
 INNER JOIN EVENTS ON organizer.org_id= events.Org_id
INNER JOIN SOCIAL_EVENTS ON EVENTS.EVENT_ID=SOCIAL_EVENTS.EVENT_ID;

SELECT ORG_LASTNAME,ORG_FIRSTNAME,ORG_CONTACT,EVENT_TYPE,EVENT_ID,
EVENT_STARTTIME,SOCIAL_ID,SOCIAL_EVENT,MAXCAPACITY_FOR_SOCIAL_EVENTS FROM SOCIAL_EVENTLOG;
 


CREATE VIEW SPONORED_EVENTLOG AS
SELECT ORGANIZER.ORG_LASTNAME,ORGANIZER.ORG_FIRSTNAME,ORGANIZER.ORG_CONTACT,EVENTS.EVENT_ID, EVENTS.EVENT_TYPE, EVENTS.EVENT_STARTTIME,
SPON_EVENTS.SPONE_ID,SPON_EVENTS.EVENT_NAME AS SPON_EVENT,
SPON_EVENTS.MAX_CAPACITY AS MAXCAPACITY_FOR_SPONORED_EVENTS,SPON_EVENTS.ATTENDEE_ID
FROM ORGANIZER
 INNER JOIN EVENTS ON organizer.org_id= events.Org_id
INNER JOIN SPON_EVENTS ON EVENTS.EVENT_ID=SPON_EVENTS.EVENT_ID;

SELECT ORG_LASTNAME,ORG_FIRSTNAME,ORG_CONTACT,EVENT_TYPE,EVENT_ID,
EVENT_STARTTIME,SPONE_ID,SPON_EVENT,MAXCAPACITY_FOR_SPONORED_EVENTS FROM SPONORED_EVENTLOG;
Delimiter //
Create trigger tr_Event_update
before update on Events 
for each row
begin
insert into Event_update
set action ="UPDATE",
Event_id = old.Event_id,
Event_type=old.event_type,
Street=old.street,
city= old.city,
state= old.state,
Event_starttime=old.event_starttime,
Event_endtime=old.Event_endtime,
Changed_time=Now();
END; //


CREATE VIEW  attendee_booking_details as
select attendee.attendee_firstname as FIRSTNAME,attendee.attendee_lastname as LASTNAME, attendee.attendee_emailid as EMAIL_ID,attendee.attendee_contact AS CONTACT,
attendee_account.attendee_id AS ID,attendee_account.bank_name AS BANK_NAME,attendee_account.ifsc_code AS IFSC_CODE,
seat_booking.seat_id as SEAT_ID, seat_booking.EVENT_NAME
FROM ATTENDEE
INNER JOIN ATTENDEE_ACCOUNT ON attendee.attendee_id=attendee_account.attendee_id
INNER JOIN SEAT_BOOKING ON attendee_account.attendee_account_id=seat_booking.attendee_account_id;
 

select  FIRSTNAME, LASTNAME, EMAIL_ID, ID,BANK_NAME,IFSC_CODE, SEAT_ID,EVENT_NAME from attendee_booking_details;



DELIMITER //
CREATE trigger t1
before insert on social_events
FOR EACH ROW
BEGIN
 SET NEW.TOTAL= NEW.MAX_CAPACITY*NEW.ENTREE_FEE;
 END;
 //
 
 DELIMITER //
 CREATE TRIGGER T2
 BEFORE INSERT ON SPON_EVENTS
 FOR EACH ROW
 BEGIN
 SET NEW.TOTAL= NEW.MAX_CAPACITY*NEW.ENTREE_FEE;
 END;
 //
 
delimiter //
create procedure entree_fee_increment(in percent int, in id varchar(10))
begin
update social_events  

set entree_fee= entree_fee + (entree_fee* percent/100) 
where social_id= id;
update social_events
set total= max_capacity*entree_fee
where social_id=id;
end;
//

 call entree_fee_increment (8,'s_1');
call entree_fee_increment (30,'s_3');
call entree_fee_increment (4,'s_4');

drop  procedure entree_fee_increment;
select * from social_events;

delimiter //
create procedure entree_fee_increment1(in percent int, in id varchar(10))
begin
update spon_events
set entree_fee= entree_fee + (entree_fee* percent/100) 
where spone_id= id;
update spon_events
set total= max_capacity*entree_fee
where spon_id=id;
end;
//
drop procedure entree_fee_increment1;
 call entree_fee_increment1 (70,'sp_1');
 
call entree_fee_increment1 (3,'sp_2');
call entree_fee_increment1 (8,'sp_3');
select * from spon_events;



