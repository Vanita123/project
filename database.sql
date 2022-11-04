
--1 execute the below to create a database;
create database paw;
use paw;

--2 for roles table

CREATE TABLE Roles(roleid int NOT NULL PRIMARY KEY, role varchar(255) NOT NULL, role_desc VARCHAR(255) NOT NULL);
--3 execute below to create users table
 
 CREATE TABLE Users (username varchar(255) NOT NULL PRIMARY KEY, fname VARCHAR(255) NOT NULL, lname VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL UNIQUE, phno VARCHAR(255), password  VARCHAR(255) NOT NULL UNIQUE, role varchar(255) NOT NULL, roleid int NOT NULL,
  FOREIGN KEY (roleid) REFERENCES Roles(roleid);

--4 for security questions
CREATE TABLE Security(SQID int PRIMARY KEY NOT NULL AUTO_INCREMENT, username varchar(255) NOT NULL,
 sq1 varchar(255) NOT NULL, sq2 VARCHAR(255) NOT NULL, sq1_ans varchar(255) not null, sq2_ans varchar(255) not null,
 FOREIGN KEY (username) REFERENCES users(username));
		     
--5 Booking table		     
CREATE TABLE bookings(booking_id int auto_increment NOT NULL PRIMARY KEY, owner_name varchar(255) not null, renter_name varchar(255) not null, pet varchar(255) not null, booking_duration int not null, rating int, rent_price int not null, start_date datetime, end_date datetime,location varchar(255) not null, FOREIGN KEY (renter_name) REFERENCES users(username));

--6 payments table		     
		     
CREATE TABLE payments(payment_id int primary key auto_increment, booking_id int not null, amount int not null, invoice_id int, status varchar(255) not null, payment_date datetime, FOREIGN KEY (booking_id) REFERENCES bookings (booking_id));

--7 approval table		     
		     
CREATE TABLE  approval(booking_id int not null, renter_name varchar(255) not null, owner_details varchar(255) not null,pet varchar(255), foreign key (booking_id) references bookings(booking_id));

--8 pets table		     
		     
		     
CREATE TABLE pets(id int primary key auto_increment, name varchar(255) not null, owner varchar(255) not null,
 pet varchar(255) not null, sex char(1) not null, DOB date not null, age varchar(100) not null,  breed varchar(255) 
 not null, size varchar(10) not null, temp varchar(50) not null, color varchar(10) not null, vaccinated 
 char(10) not null, allergies varchar(255) not null, other varchar(255));

--address table
		     
CREATE TABLE address(AddressID int NOT NULL AUTO_INCREMENT  PRIMARY KEY, Address varchar(255) not null,
 City VARCHAR(100) NOT NULL, State varchar(50) not null, Country varchar(50) not null, Zipcode varchar(10) not null, 
 username varchar(50) not null, foreign key(username) references users(username));
		     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Drop address column from users table.
		     
alter table users drop column address;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--insert in to users example:

INSERT INTO users(fname, lname, email, phno, password, role, roleid) VALUES('slash', 'G', 'slash@iu.edu', 3245423235, 'fewrewr','user', 3);

--insert in to roles

INSERT INTO Roles(roleid , role_name, role_desc) VALUES(3, 'Admin',  'Approves the item added for rent, accepts customer complaints and routes it to the appropriate renter, issues a refund to the renter'),
    (2, 'Owner',  'The renter should be able to post the item for rent. View the information of the customer who rented the items/services.'),
    (1, 'Renter',  'A customer can choose the item/place for rent make payments, cancel rental bookings, lodge complaints, apply for refund.');

--insert in to security
INSERT INTO Security (username, sq1, sq2, sq1_ans, sq2_ans) VALUES('EmmaSmith1944','What would you name your pet?','What would you name your pet home?','Olie','home');

---insert into pets table.
INSERT INTO pets (name, owner, pet, sex, DOB, age, breed, size, temperment, color, vaccinated, allergies,other) VALUES
('Snowflake', 'Emma', 'cat', 'f','2020-11-12', 2, 'persian cat', 'medium', 'calm', 'cream', 'yes', 'None', 'No shedding'),
('Coonie', 'Ester', 'cat', 'm','2021-12-23', 1, 'Maine coon', 'large', 'friendly', 'blue', 'yes', 'None', 'No biting'),
('Buttercup', 'Adam', 'cat', 'f','2018-3-01', 4, 'Ragdoll', 'small', 'sociable', 'lilac', 'yes', 'None', 'Non-allergic'),
('Cooper', 'Max', 'dog', 'm','2020-3-2', 1, 'German Shephard', 'large', 'Courageous', 'Sable', 'yes', 'None', 'No biting');
		     
---------------------insert into users
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('alse7656','ew','eqwe','alse@gmail.com','4233123490','$2b$10$n8akrtKwZ5W1ogaRSF1RpumyTK6hzJIF30uNsN4LmnEgUatjB53uO','2',1);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('Brown7612','Adam','Brown','Brown@gmail.com','3123245292','$2b$10$ymu0odCJ8sh9ldeCZ.vYUu3ySPUgrF9sL8BX8Cb.ky.pYc8ABTdKO','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('DanielR8186','Daniel','Ricardo','DanielR@gmail.com','3213023329','$2b$10$EGNbayuXaVk3WzzrfuDsUuPqJj0floH0wDGR0233m1vKoiexPCwly','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('EmmaSmith1944','Emma','Smith','EmmaSmith@gmail.com','8931334791','$2b$10$lZ/AK0wrPHUQvZALQHyRQOsXutYYgANj.5ws1WTyaMLs9w320wogG','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('EsterJ3006','Ester','Jackson','EsterJ@gmail.com','3849324833','$2b$10$rSIVl8MJSp8mFe9i82Mequdhyhv5HYBTtRPxKiJmA8nGvNIFPCUfm','Owner',1);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('Grace8309','Alexa','Grace','Grace@gmail.com','3242348921','$2b$10$ZMG3sfSat6IvmgV.tOU7be/NzkO2sN2IoOw0ghNA2sfpMwXS39AHW','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('Joy5658','Joy','Daniel','Joy@gmail.com','3424098723','$2b$10$fcHc/nTN0O.2ihO4Xk1H6eoMQG4OCisPnfAM5EmdGnE55iljRHmpy','2',1);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('lghanta355','Tejaswy','Ghanta','lghanta@iu.edu','23244113456','keyword','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('Lizy4235','Lizy','McGuire','Lizy@gmail.com','4324123238','$2b$10$YI/nqqKWhFeHOiyqKWaiI.jDNt.m3BA0yR21/1XzrKoN8O76MAIDq','Owner',1);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('Maxmiller2857','Max','Miller','Maxmiller@gmail.com','4234891312','$2b$10$UQlv5kPqwMdmMj0x/MFmNuwByp7AnLQ9Oezy9CgWNDvvslwxNNzga','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('Muser6601','Jerimiah','Muser','Muser@gmail.com','3425322490','$2b$10$Q9p.h51W1ZxdjrpyMW59/uomiwGQMPkTMibK8llXzsW6.BNbY2XTW','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('sainz8714','Carlos','Sainz','sainz,@iu.edu','1234459736','$2b$10$MkfTeEa9Qf4b.ol51Kqqt.kDI/hQZOLzXTMiukzlfvjgdCGjq3pBy','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('svasire578','Sahithi','Vasireddy','svasire@iu.edu','8126064219','password','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('vlalwani467','Vanita','Lalwani','vlalwani@iu.edu','3214579313','passcode','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('werwe1002','rwerew','rwer','werwe@gmail.com','4324532543','$2b$10$qwGMxnAlb5Ycyc4UEGKWhevm/95/HR11kmsViQuLzpqLpLq8eMsiG','2',1);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('Williamson3626','Donald','Williamson','Williamson@iu.edu','4435234245','$2b$10$VmBDsA5ExqR65EWOFjjXdeaUZx/TXRDACpUEk0WMKJ.2wgROP7VW2','Owner',2);
INSERT INTO `` (`username`,`fname`,`lname`,`email`,`phno`,`password`,`role`,`roleid`) VALUES ('zorth768','Zachary','Orth','zorth@iu.edu','3244329471','code','Owner',2);
		     
		     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		     
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (1,'265 Ann Drive','Morganton','NE','USA','28655','EmmaSmith1944');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (2,'354 Poor House Drive','Lansdale','PA','USA','28655','Brown7612');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (3,'8991 Pine Ave','Marietta','GA','USA','28655','Maxmiller2857');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (4,'46 N. La Sierra Road','Owensboro','KY','USA','28655','Lizy4235');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (6,'3490 Ridgewood Dr Erlanger','NJ','KY','USA','32323','Grace8309');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (7,'301 E 18th St','Oakland','California','USA','94606','Muser6601');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (9,'3710 Rawlins St #1380','Dallas','Texas','USA','75219','DanielR8186');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (12,' 3128 Zimmerman Lane','er3','432','43','423','alse7656');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (14,'3er34','rew','wer','rwe','rew','werwe1002');
INSERT INTO `` (`AddressID`,`Address`,`City`,`State`,`Country`,`Zipcode`,`username`) VALUES (15,' 3128 Zimmerman Lane','Los Angeles','California','USA','90071','Joy5658');

-- Role id changes:
-- ALTER TABLE users DROP FOREIGN KEY users_ibfk_1;
-- CREATE TABLE Roles(roleid int NOT NULL PRIMARY KEY, role varchar(255) NOT NULL, role_desc VARCHAR(255) NOT NULL);
-- INSERT INTO Roles(roleid , role, role_desc) VALUES(3, 'Admin',  'Approves the item added for rent, accepts customer complaints and routes it to the appropriate renter, issues a refund to the renter'),
--     (2, 'Owner',  'The renter should be able to post the item for rent. View the information of the customer who rented the items/services.'),
--     (1, 'Renter',  'A customer can choose the item/place for rent make payments, cancel rental bookings, lodge complaints, apply for refund.');
    
-- ALTER TABLE users
-- ADD FOREIGN KEY (roleid) REFERENCES roles(roleid);

-- Create:
