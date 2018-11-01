CREATE DATABASE
movie;

USE MOVIE ; 

CREATE TABLE
employee (
emp_id INT PRIMARY KEY auto_increment,
emp_fname VARCHAR(15) NOT NULL,
emp_lname VARCHAR(20) NOT NULL,
emp_phone VARCHAR(12) NOT NULL,
emp_hire_date DATE NOT NULL,
emp_type VARCHAR(10) 
); 

CREATE TABLE 
salary(
emp_id INT PRIMARY KEY,
salary_amt NUMERIC(10,2) NOT NULL,
FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

CREATE TABLE
hourly(
emp_id INT PRIMARY KEY,
hourly_amt NUMERIC (10,2) NOT NULL,
FOREIGN KEY (emp_id) REFERENCES employee(emp_Id)
); 

CREATE TABLE
logsheet(
logsheet_ID VARCHAR(10),
emp_id INT,
logsheet_start_date DATE,
PRIMARY KEY (logsheet_id, emp_id),
FOREIGN KEY (emp_id) REFERENCES employee(emp_id)

); 

CREATE TABLE
log_line(
logline_id INT,
logsheet_id VARCHAR (10),
logline_date DATE,
logline_time_in TIME,
logline_time_out TIME,
logline_hours INT,
PRIMARY KEY (logsheet_id, logline_id),
FOREIGN KEY(logsheet_id) REFERENCES logsheet(logsheet_id)
); 



CREATE TABLE
emp_schedule(
emp_sched_id varchar(6),
emp_id INT,
emp_sched_hours INT,
PRIMARY KEY (emp_sched_id),
FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
); 

CREATE TABLE
sched_line(
sched_line_id INT,
emp_sched_id VARCHAR(6),
sched_line_date DATE,
sched_line_time_in TIME,
sched_line_time_out TIME,
sched_line_hours INT,
PRIMARY KEY(emp_sched_id, sched_line_id),
FOREIGN KEY(emp_sched_id) REFERENCES emp_schedule(emp_sched_id)
); 

CREATE TABLE 
customer(
cust_id INT PRIMARY KEY auto_increment,
cust_fname VARCHAR(15) NOT NULL,
cust_lname VARCHAR(20) NOT NULL,
cust_phone VARCHAR(12) NOT NULL,
cust_email VARCHAR(30) NOT NULL
); 



CREATE TABLE
invoice(
invoice_id int PRIMARY KEY auto_increment,
cust_id INT NOT NULL,
invoice_checkout_date DATE NOT NULL,
invoice_subtotal NUMERIC(6,2) NOT NULL,
invoice_tax NUMERIC(4,2) NOT NULL,
invoice_total NUMERIC (6,2) NOT NULL, 
invoice_dueDate DATE NOT NULL,
FOREIGN KEY (cust_id) REFERENCES customer(cust_id)
);
 
ALTER TABLE
invoice
auto_increment =1000; 

CREATE TABLE
movietype(
movietype_id VARCHAR(6) PRIMARY KEY,
movietype_name VARCHAR(20) NOT NULL
); 

CREATE TABLE 
movie(
movie_id INT auto_increment,
movietype_id VARCHAR(6),
movie_title VARCHAR(20) NOT NULL,
movie_copies INT,
movie_desirable CHAR(1),
movie_date_acquired DATE NOT NULL,
movie_rental_fee NUMERIC(5,2) NOT NULL,
movie_days_instock INT NOT NULL,
PRIMARY KEY(movie_id),
FOREIGN KEY (movietype_id) REFERENCES movietype(movietype_id) 
);



CREATE TABLE
invoice_line(
inv_line_id INT auto_increment,
invoice_id INT,
movie_id INT,
inv_line_quantity INT  NOT NULL,
inv_line_total NUMERIC (10,2) NOT NULL,
FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
PRIMARY KEY (inv_line_id, invoice_id)
);


CREATE TABLE
movieout(
cust_id INT,
invoice_id INT,
inv_line_id INT,
movieout_chkout_date DATE NOT NULL,
movieout_chkin_date DATE,
movieout_overdue_date DATE NOT NULL,
movieout_late_fee NUMERIC(6,2),
movieout_days_late INT,
PRIMARY KEY (cust_id, invoice_id, inv_line_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id),
FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);

CREATE TABLE
vendor(
vend_id INT PRIMARY KEY auto_increment,
vend_name VARCHAR (20) NOT NULL,
vend_phone VARCHAR(12) NOT NULL,
vend_email VARCHAR(20),
vend_address VARCHAR(15) NOT NULL,
vend_city VARCHAR(15) NOT NULL,
vend_state VARCHAR(3) NOT NULL,
vend_zipcode INT,
vend_potential CHAR(1)
);

ALTER table
VENDOR
auto_increment =1000; 

CREATE TABLE
vendor_order(
v_order_id INT AUTO_INCREMENT,
vend_id INT,
v_order_movie_id VARCHAR(6),
v_order_qty INT,
PRIMARY KEY (v_order_id),
FOREIGN KEY (vend_id) REFERENCES vendor(vend_id)
); 



