create database Eastern_Union;
Use Eastern_Union; 

create table Users  (
NationalID integer primary key not null,
Name text not null,
phone text not null,
Email text not null,
Birth_Date DATE not null,
Country	text not null
);
	
create table Employess  (
NationalID integer primary key not null,
Name text not null,
phone text not null,
Email text not null,
Birth_Date DATE not null,
Country	text not null,
Password text not null,
Job ENUM('Cashier','Admin') not null
);

create table Accounts  (
ID integer primary key not null AUTO_INCREMENT,
UserID integer not null,
Credits integer not null
);

create table Exchange  (
ID integer primary key not null AUTO_INCREMENT,
Name_of_Currency text not null,
Value integer not null
);

create table Transactions  (
ID integer primary key not null AUTO_INCREMENT,
FromID integer not null,
ToID integer not null,
Process_Type ENUM('Withdrawl','Deposit','Exchange', 'Transfer') not null,
Amount integer not null ,
Curency text not null
);



