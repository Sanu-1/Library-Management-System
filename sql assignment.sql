create database library;
use library;
create table Branch(Branch_no int primary key,Manager_id int,Branch_address varchar(100),Contact_no varchar(10));
insert into Branch values(1,01,'Ekm 68845',4563756484),(2,02,'Tvm 48763',2435263457),(3,03,'Klm 79843',7600000022),(4,04,'Alp 22342',1221133122),
(5,05,'Idk 74453',3345674536),(6,06,'Ktm 69445',4455443323);
select * from Branch;
create table Employee(Emp_id int primary key,Emp_name varchar(25),Position varchar(20),Salary float,Branch_no int, FOREIGN KEY(Branch_no)
references Branch (Branch_no));
insert into Employee values(01,'Michel','Manager',55000.00,1),(102,'Alice','Librarian',45000.00,1),(103,'Aadhil','Assistant',30000.00,1),
(104,'Bony','Clerk',28000.00,1),(105,'Asha','Cleaner',25000.00,1),(02,'Alex','Manager',55000.00,2),(211,'Jomin','Librarian',45000.00,2),
(212,'Smith','Clerk',25000.00,2),(303,'Willie','Librarian',40000.00,3),(03,'Smith','Manager',50000.00,3),(306,'Mary','Assistant',30000.00,3),
(410,'Jason','Librarian',450000.00,4),(04,'Lucy','Manager',55000.00,4),(412,'Jude','Receptionist',30000.00,4),(1101,'Mable','Receptionist]',
35000.00,5),(05,'Christy','Manager',54000.00,5),(1103,'Alphonsa','Librarian',47000.00,5),(1104,'Jackson','Clerck',35000.00,5),
(1105,'Jake','Cleaner',25000.00,5),(1106,'Carl','Security',30000.00,5),(1201,'Alan','Security',30000.00,6),(06,'Luna','Manager',52000.00,6),
(1203,'Steve','Librarian',48000.00,6),(1204,'Alexa','Assistant',35000.00,6);
select * from Employee;
update employee set salary = 45000.00 where emp_id = 410;
create table Books(ISBN varchar(20) primary key,Book_title varchar(100),Category varchar(100),Rental_price float,status varchar(5),
author varchar(50),publisher varchar(100));
insert into Books values('978-0-316-01792-3','The Catcher in the Rye','Fiction',25.0,'yes','J.D.Salinger','Little Brown and Company'),
('978-0-7432-7356-5','The Da Vinci Code','Thriller',40.05,'yes','Dan Brown','Doubleday'),
('978-0-394-82337-9','1984','Dystopian',30.00,'yes','George Orwell','Secker & Warburg'),
('978-0-307-28046-7','The Great Gatsby','Fiction',28.00,'yes','F. Scott Fitzgerald','Scribner'),
('978-0-14-312854-0','To Kill a Mockingbird','Fiction',30.00,'yes','Harper Lee','J.B.Lippincott & Co.'),
('978-0-345-39180-3','The Hobbit','Fantasy',35.00,'yes','J.R.R.Tolkien','George Allen & Unwin'),
('978-0-394-52320-9','Pride and Prejudice','Romance',20.00,'No','Jane Austen','T.Egerton,Whitehall'),
('978-1-5011-8229-9','The Outsider','Horror',35.05,'No','Stephen King','Scribner'),
('978-0-307-27778-9','Gone Girl','Thriller',20.15,'yes','Gillan Flynn','Crown Publishing Group'),
('978-0-7432-7352-7','Angels & Demons','Thriller',30.00,'yes','Dan Brown','Pocket Books');
insert into Books values('978-0-987-65432-1','History of The World','History',30.05,'No','J.M.Roberts','Oxford University Press'),
('978-0-345-67890-1','History and Culture','History',29.00,'yes','Paul Johnson','Harper Collins');
select * from Books;
update books set rental_price = 20 where isbn = '978-0-345-39180-3';
update books set rental_price = 22 where isbn = '978-0-345-67890-1';
update books set rental_price = 24 where isbn = '978-0-307-28046-7';
create table Customer(Customer_id int primary key,Customer_name varchar(25),Customer_address varchar(100),Reg_date date);
insert into customer values(001,'Jason Scaria','Austin TX 7703','2019-03-16'),
(002,'Mathew C.M','Springfield 45628','2019-08-24'),(003,'Ashly john','Denver CO 74453','2019-01-01'),
(004,'Tom Jerry','Boston MA 69445','2020-02-09'),(005,'Sam Ashik','Seattle WA','2020-03-16'),
(006,'Maria N.C','Oak road 4765','2020-03-18'),(007,'Jackson Thomas','Birch Boulevard 6432','2020-05-24'),
(008,'Tony Collin','Pine avenue 69445','2020-08-12'),(009,'Smith Joe','oak avenue 45637','2021-09-13'),
(010,'Megan Alex','market Place 34231','2021-03-24'),(011,'Sincy Sam','Maple Lane 3421','2021-10-05'),
(012,'Stuwart Doe','Elm street 764','2021-12-25'),(013,'Marco Brown','Apple Street 987','2022-09-01'),
(014,'Frank Wills','willie Town 4659','2022-10-10'),(015,'Ram Swamy','Mooze Avenue 9789','2023-04-29');
select * from customer;
create table IssueStatus(Issue_id int primary key,issued_cust int,foreign key(Issued_cust) references Customer(Customer_id),
Issued_book_name varchar(100),Issue_date date,ISBN_book varchar(20),foreign key(ISBN_book) references Books(ISBN));
insert into issuestatus values(1001,001,'The Catcher in the Rye','2020-06-01','978-0-316-01792-3');
insert into issuestatus values(1002,005,'To Kill a Mockingbird','2020-06-01','978-0-14-312854-0'),
(1003,007,'History and Culture','2020-05-26','978-0-345-67890-1'),(1004,008,'Gone Girl','2020-09-01','978-0-307-27778-9'),
(1005,003,'Pride and Prejudice','2019-01-26','978-0-394-52320-9'),(1006,004,'The Great Gatsby','2020-02-21','978-0-307-28046-7'),
(1007,002,'1984','2019-08-30','978-0-394-82337-9');
select * from issuestatus;
create table ReturnStatus(Return_id int primary key,Return_cust int,Return_book_name varchar(100),Return_date date,
ISBN_book2 varchar(20),foreign key(ISBN_book2) references Books(ISBN));
insert into ReturnStatus values(1010,001,'The Catcher in the Rye','2020-06-17','978-0-316-01792-3'),
(1011,005,'To Kill a Mockingbird','2020-06-20','978-0-14-312854-0'),
(1012,007,'History and Culture','2020-06-10','978-0-345-67890-1'),
(1013,008,'Gone Girl','2020-09-20','978-0-307-27778-9'),(1014,002,'1984','2019-09-16','978-0-345-39180-3');
select * from ReturnStatus;
select book_title,category,rental_price from books where status = 'yes';
select emp_name,salary as "employee and salary" from employee group by emp_name,salary order by salary desc;
select issuestatus.issued_cust,issuestatus.Issued_book_name,customer.customer_name from issuestatus join customer on
issuestatus.issued_cust = customer.customer_id;
select distinct category,count(isbn) from books group by category;
select * from employee having salary > 50000;
select Customer.customer_name,customer.customer_id,issuestatus.issue_id from customer left join 
issuestatus on issuestatus.issued_cust = customer.customer_id where customer.reg_date < '2022-01-01';
select distinct branch_no,count(emp_id) from employee group by branch_no;
insert into issuestatus values(1008,001,'The Outsider','2023-06-05','978-1-5011-8229-9'),(1040,015,'The Da Vinci Code','2023-06-19','978-0-7432-7356-5'),
(1041,014,'History and Culture','2023-06-27','978-0-345-67890-1');
select customer.customer_name,issuestatus.issue_date from customer join issuestatus on 
customer.customer_id = issuestatus.issued_cust where 
month(issuestatus.issue_date) = 6 and
year(issuestatus.issue_date) = 2023;
select book_title from books where  book_title like '%history%';
select branch_no,count(emp_id) from employee group by branch_no having count(emp_id) > 5;
select employee.emp_name,employee.position,branch.manager_id,branch.branch_address from employee join branch on
employee.emp_id = branch.manager_id;
select customer_name from customer join issuestatus on customer.customer_id = issuestatus.issued_cust join books on
issuestatus.isbn_book = books.isbn where books.rental_price > 25;

