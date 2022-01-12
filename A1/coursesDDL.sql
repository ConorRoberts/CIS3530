
create table Student(
	sID integer primary key,
	firstName varchar(15) not null,
	lastName varchar(15) not null,
	email varchar(25),
	cgpa numeric(10,2));

create table Course(
	cNum integer,			-- E.g., 3530
	name varchar(40) not null, 	-- E.g., 'Introduction to Databases'
	dept varchar(20),		-- E.g., 'SOCS'
	credit integer,
	primary key (cNum, dept));
	
create table Offering(
	oID integer primary key,
	cNum integer,
	dept varchar(20),
	year integer,
	term CHAR, 
	instructor varchar(40),	
	foreign key (cNum, dept) references Course);
	
create table Took(
	sID integer,
	oID integer,
	grade integer,	
	primary key (sID, oID),	
	foreign key (sID) references Student,
	foreign key (oID) references Offering);


-------Run this part after inserting the tuples

 