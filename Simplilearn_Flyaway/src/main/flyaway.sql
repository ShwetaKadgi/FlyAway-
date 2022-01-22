create database Simple;
use Simple;
Create table admin(username varchar(45) default null,
				   password varchar(45) default null,
                   name varchar(45) default null);
Create table airlines(`code` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL);
Create table flights(NAME varchar(45) default null,
					 AIRLINE varchar(45) default null,
                     WAY varchar(45) default null,
                     PRICE int default null,
                     source varchar(45) default null,
                     destination varchar(45) default null,
                     hours int default null);

Create table places(`code` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL);

Create table users(`email` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `firstname` varchar(60) DEFAULT NULL,
  `lastname` varchar(60) DEFAULT NULL);

Insert into airlines (code,name) values('AIRIE','AirIndiaExpress'),
									   ('AIRN','AirIndia'),
                                       ('INDG','IndiGo'),
                                       ('KING','Kingfisher'),
                                       ('SPIC','SpiceJet'),
                                       ('TRUJ','TrueJet'),
                                       ('VISTA','Vistara');
                                       
Insert into flights (NAME, AIRLINE, WAY, PRICE, source, destination, hours ) 
values('AIRN1', 'AIR INDIA', 'HYD-DEL', '5670', 'Hyderabad', 'Delhi', '3'),
	  ('AIRN10', 'AIR INDIA', 'PUNA-KOL', '3455', 'Puna', 'Kolkata', '2'),
      ('AIRN11', 'AIR INDIA', 'PUNA-SOLA', '6030', 'Puna', 'Solapur', '3'),
      ('AIRN12', 'AIR INDIA', 'SOLA-BAN', '6040', 'Solapur ', 'Banglore', '4'),
      ('AIRN13', 'AIR INDIA', 'SOLA-DEL', '6600', 'Solapur ', 'Delhi', '5'),
      ('AIRN14', 'AIR INDIA', 'SOLA-HYD', '6090', 'Solapur ', 'Hyderabad', '3'),
      ('AIRN15', 'AIR INDIA', 'SOLA-KOL', '4000', 'Solapur', 'Kolkata', '4'),
      ('AIRN16', 'AIR INDIA', 'SOLA-MUM', '7000', 'Solapur', 'Mumbai', '3'),
      ('AIRN2', 'AIR INDIA', 'HYD-KOL', '3000', 'Hyderabad', 'Kolkata', '4'),
      ('AIRN3', 'AIR INDIA', 'HYD-MUM', '2344', 'Hyderabad', 'Mumbai', '3'),
      ('AIRN4', 'AIR INDIA', 'HYD-BAN', '2342', 'Hyderabad', 'Banglore', '2'),
      ('AIRN5', 'AIR INDIA', 'KOL-PUNA', '1234', 'Kolkata', 'Puna', '3'),
      ('AIRN6', 'AIR INDIA', 'MUM-PUNA', '6789', 'Mumbai', 'Puna', '4'),
      ('AIRN7', 'AIR INDIA', 'MUM-SOLA', '4567', 'Mumbai', 'Solapur', '4'),
      ('AIRN8', 'AIR INDIA', 'PUNA-DEL', '3456', 'Puna ', 'Delhi', '3'),
      ('AIRN9', 'AIR INDIA', 'PUNA-HYD', '3455', 'Puna ', 'Hyderabad', '4'),
      ('INDG1', 'INDIGO', 'DEL-KOL', '3455', 'Delhi', 'Kolkata', '5'),
      ('INDG2', 'INDIGO', 'DEL-MUM', '7890', 'Delhi', 'Mumbai', '3'),
      ('INDG3', 'INDIGO', 'DEL-BAN', '3456', 'Delhi', 'Banglore', '2'),
      ('INDG4', 'INDIGO', 'DEL-HYD', '3456', 'Delhi', 'Hyderabad', '2'),
      ('KING1', 'KINGFISHER', 'KOL-MUM', '1234', 'Kolkata', 'Mumbai', '3'),
      ('KING2', 'KINGFISHER', 'KOL-BAN', '2867', 'Kolkata', 'Banglore', '2'),
      ('KING3', 'KINGFISHER', 'KOL-HYD', '1243', 'Kolkata', 'Hyderabad', '2'),
      ('KING4', 'KINGFISHER', 'KOL-DEL', '4455', 'Kolkata', 'Delhi', '2'),
      ('KING5', 'KINGFISHER', 'BAN-DELHI', '2354', 'Banglore ', 'Delhi', '2'),
      ('KING6', 'KINGFISHER', 'BAN-HYD', '7890', 'Banglore', 'Hyderabad', '3'),
      ('KING7', 'KINGFISHER', 'BAN-KOL', '9000', 'Banglore ', 'Kolkata', '3'),
      ('SPIC1', 'SPICE JET', 'MUM-BAN', '6000', 'Mumbai', 'Banglore', '3'),
      ('SPIC10', 'SPICE JET', 'DEL-SOLA', '6878', 'Delhi', 'Solapur', '3'),
      ('SPIC2', 'SPICE JET', 'MUM-HYD', '7899', 'Mumbai', 'Hyderabad', '2'),
      ('SPIC3', 'SPICE JET', 'MUM-KOL', '9999', 'Mumbai', 'Kolkata', '2'),
      ('SPIC4', 'SPICE JET', 'MUM-DEL', '4577', 'Mumbai', 'Delhi', '2'),
      ('SPIC5', 'SPICE JET', 'BAN-MUM', '4566', 'Banglore', 'Mumbai', '3'),
      ('SPIC5', 'SPICE JET', 'BAN-MUM', '4566', 'Banglore', 'Mumbai', '3'),
      ('SPIC6', 'SPICE JET', 'BAN-PUNA', '3456', 'Banglore', 'Puna', '3'),
      ('SPIC7', 'SPICE JET', 'BAN-SOLA', '2544', 'Banglore', 'Solapur', '4'),
      ('SPIC8', 'SPICE JET', 'DEL-BAN', '2343', 'Delhi', 'Banglore', '4'),
      ('SPIC9', 'SPICE JET', 'DEL-PUNA', '4566', 'Delhi', 'Puna', '5'),
      ('SPIC9', 'SPICE JET', 'DEL-PUNA', '4566', 'Delhi', 'Puna', '5'),
      ('TRUJ1', 'TRUEJET', 'MUM-DEL', '5467', 'Mumbai', 'Delhi', '6'),
      ('TRUJ2', 'TRUEJET', 'MUM-KOL', '7899', 'Mumbai', 'Kolkata', '2'),
      ('TRUJ3', 'TRUEJET', 'MUM-HYD', '6777', 'Mumbai', 'Hyderabad', '2'),
      ('TRUJ4', 'TRUEJET', 'KOL-BAN', '4566', 'Kolkata', 'Banglore', '3'),
      ('TRUJ5', 'TRUEJET', 'HYD-PUNA', '2344', 'Hyderabad', 'Puna', '4'),
      ('TRUJ6', 'TRUEJET', 'HYD-SOLA', '5678', 'Hyderabad', 'Solapur', '3'),
      ('TRUJ7', 'TRUEJET', 'KOL-SOLA', '5677', 'Kolkata', 'Solapur', '3'),
      ('VISTA1', 'VISTARA', 'MUM-DEL', '5678', 'Mumbai', 'Delhi', '3'),
      ('VISTA2', 'VISTARA', 'KOL-MUM', '5677', 'Kolkata', 'Mumbai', '3'),
      ('VISTA3', 'VISTARA', 'HYD-DEL', '4576', 'Hyderabad', 'Delhi', '3'),
      ('VISTA4', 'VISTARA', 'HYD-BAN', '4576', 'Hyderabad', 'Banglore', '3'),
      ('VISTA5', 'VISTARA', 'KOL-BAN', '7777', 'Kolkata', 'Banglore', '4'),
      ('VISTA6', 'VISTARA', 'PUNA-BAN', '7775', 'Puna', 'Banglore', '5'),
      ('VISTA7', 'VISTARA', 'SOLA-PUNA', '2343', 'Solapur', 'Puna', '6'),
      ('VISTA8', 'VISTARA', 'KOL-BAN', '2333', 'Kolkata', 'Banglore', '3');

insert into admin (username, password, name) values('shwetakadgi@gmail.com', 'password', 'shweta');

insert into places(code, name) values ('BAN', 'Banglore'),
									  ('DEL', 'Delhi'),
                                      ('HYD', 'Hyderabad'),
                                      ('KOL', 'Kolkata'),
                                      ('MUM', 'Mumbai'),
                                      ('PUNA', 'Puna'),
                                      ('SOLA', 'Solapur');
                                      
insert into users(email, password, firstname, lastname) values('Ariana@gmail.com', 'ari', 'Ariana', 'Grande'),
															  ('Bhumikabhilare@gmail.com', 'bhumika@123', 'Bhumika ', 'Bhilare'),
															  ('PriyankaJonas@gmail.com', 'Priyanka@123', 'Priyanka', 'Jonas');
