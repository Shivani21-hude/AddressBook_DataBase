-- Welcome to AddressBook Database
--Uc1
create database AddressBook
use AddresssBook

--Uc2
create table AddressBookTable(
id int identity(1,1) primary key,
Firstname varchar(200),
Lastname varchar(200),
Address varchar(200),
City varchar(50),
State varchar(100),
Zipcode int,
Phonenumber int,
Email varchar(200)
);

select * from AddressBookTable