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
insert into AddressBookTable values ('Vir','Mehra','Wardha','Wardha','Maharashtrsa',442001,7532245797,'vir@gmail.com'),
('Mehek','Sono','nagpur','nagpur','Maharashtrsa',672315,8654321906,'mehek@gmail.com')

--Uc4 edit contact using person's name

update AddressBookTable set City='pune' where Firstname='Shree'
update AddressBookTable set Zipcode=429017 where Firstname='Sai'

--to show the table 
select * from AddressBookTable

--Uc5 delete a person contact using person's name

delete from AddressBookTable where Firstname='Sai'

--Uc6 Retrive person details using city or state

select * from AddressBookTable where city='pune' and state='Maharashtra'

--Uc7 Size of Address Book

select count(*) as Sizeof_AddressBook from AddressBookTable

--Uc8 Sorting alphabetically by person's name for a city

select * from AddressBookTable where city='Pune' order by Firstname

--Uc9 create a column as type and add types

alter table AddressBookTable add Type varchar(100)
update AddressBookTable set Type='Friend' where Firstname='Shivani'
update AddressBookTable set Type='Profession' where Firstname='Sam'
update AddressBookTable set Type='Family' where Firstname='Shree'
update AddressBookTable set Type='Friend' where Firstname='Vir'
update AddressBookTable set Type='Profession' where Firstname='Mehek'

--Uc10 to get number of contact person i.e Count by type

select count(*) as Numberof_contacts,Type from AddressBookTable group by Type
