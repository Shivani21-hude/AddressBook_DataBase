-- welcome to AddressBook Database
--Uc1 
create database AddressBook
use AddresssBook

--Uc2 create a table 

create table AddressBookTable(
id int identity(1,1) primary key,
Firstname varchar(200),
Lastname varchar(200),
Address varchar(200),
City varchar(100),
State varchar(100),
Zipcode int,
Phonenumber int,
Email varchar(100)
);
--change the datatype of column
alter table[dbo].[AddressBookTable]
alter column Phonenumber bigint
go

--UC3 inser the values in table

insert into AddressBookTable values ('Shivani','Hude','Wardha','Wardha','Maharashtra',442001,9856238643,'shivani@gmail.com'),
('Shree','bhat','mumbai','mumbai','Maharashtra',446789,9852158903,'shree@gmail.com'),
('Sam','oza','mumbai','mumbai','Maharashtra',568909,8935660923,'sam@gmail.com'),
('Sai','shukla','pune','pune','Maharashtra',424976,9788221883,'sai@gmail.com')

--Uc4 edit contact using person's name

update AddressBookTable set City='pune' where Firstname='Shree'
update AddressBookTable set Zipcode=429017 where Firstname='Sai'

--to show the table 
select * from AddressBookTable

--Uc5 delete a person contact using person's name

delete from AddressBookTable where Firstname='Sai'

--Uc6 Retrive person details using city or state

select * from AddressBookTable where city='pune' and state='Maharashtra'

