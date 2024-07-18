# Library-Management-System : Library Management System
It keeps track of all information about books in the library, their cost, status and total number of books available in the library.
1. Retrieve the book title, category, and rental price of all available books?
Query :- select book_title,category,rental_price from books where status = 'yes';
3. List the employee names and their respective salaries in descending order of salary?
Query :-select emp_name,salary as "employee and salary" from employee group by emp_name,salary order by salary desc; 
5. Retrieve the book titles and the corresponding customers who have issued those books?
Query :-select issuestatus.issued_cust,issuestatus.Issued_book_name,customer.customer_name from issuestatus join customer on
issuestatus.issued_cust = customer.customer_id;
7. Display the total count of books in each category?
Query :- select distinct category,count(isbn) from books group by category; 
9. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000?
Query :- select * from employee having salary > 50000; 
11. List the customer names who registered before 2022-01-01 and have not issued any books yet?
Query :- select Customer.customer_name,customer.customer_id,issuestatus.issue_id from customer left join 
issuestatus on issuestatus.issued_cust = customer.customer_id where customer.reg_date < '2022-01-01';
13. Display the branch numbers and the total count of employees in each branch?
Query :- select distinct branch_no,count(emp_id) from employee group by branch_no;
15. Display the names of customers who have issued books in the month of June 2023?
Query :- select customer.customer_name,issuestatus.issue_date from customer join issuestatus on 
customer.customer_id = issuestatus.issued_cust where 
month(issuestatus.issue_date) = 6 and
year(issuestatus.issue_date) = 2023;
17. Retrieve book_title from book table containing history?
Query :- select book_title from books where  book_title like '%history%'; 
10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees?
Query :- select branch_no,count(emp_id) from employee group by branch_no having count(emp_id) > 5;
19. Retrieve the names of employees who manage branches and their respective branch addresses?
Query :- select employee.emp_name,employee.position,branch.manager_id,branch.branch_address from employee join branch on
employee.emp_id = branch.manager_id;
21.  Display the names of customers who have issued books with a rental price higher than Rs. 25?
22.  select customer_name from customer join issuestatus on customer.customer_id = issuestatus.issued_cust join books on
issuestatus.isbn_book = books.isbn where books.rental_price > 25;
