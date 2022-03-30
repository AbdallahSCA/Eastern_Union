create database Eastern_Union;
Use Eastern_Union;

create table Users  (
NationalID integer primary key,
Name text not null,
phone text not null,
Email text not null,
Birth_Date DATE not null,
Country	text not null
);
	
create table Employess  (
NationalID integer primary key,
Name text not null,
phone text not null,
Email text not null,
Birth_Date DATE not null,
Country	text not null,
Password text not null,
Job ENUM('Cashier','Admin') not null
);

create table Accounts  (
ID integer primary key not null ,
UserID integer not null,
Credits integer not null
);

create table Exchange  (
ID integer primary key not null,
Name_of_Currency text not null,
Value integer not null
);

create table Transactions  (
ID integer primary key not null,
FromID integer not null,
ToID integer not null,
Process_Type ENUM('Withdrawl',' Deposit','Exchange', 'Transfer') not null
);



