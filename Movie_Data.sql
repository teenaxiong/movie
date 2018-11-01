
INSERT INTO 
employee (emp_fname,emp_lname, emp_phone, emp_hire_date, emp_type) VALUES
('Sam', 'Johnson', '562-550-2322', '2013-6-25', 'salary'),
('Louise', 'Tyler', '704-896-2002', '2015-9-16', 'salary'),
('James', 'Willam', '704-563-5847', '2014-5-24', 'salary'),
('Rose', 'Button', '704-566-5125', '2016-5-2', 'hourly'),
('Berry', 'Michael', '828-569-9868', '2015-9-23', 'hourly'),
('Zach', 'Burrs', '565-568-5555', '2017-1-15', 'hourly'); 


INSERT INTO
salary VALUES
(1, 60000.00),
(2, 65000.00),
(3, 45000.00); 

INSERT INTO
hourly VALUES
(4, 14.00),
(5, 15.50),
(6, 12.30); 

insert into
logsheet values
('ZB2323', 1, '2018-10-15'),
('ZB2312', 2, '2018-10-10'),
('TL2646', 3, '2018-10-9'),
('TL5665', 4, '2018-10-3'),
('TL4333', 5, '2018-10-6'),
('TL5422', 6, '2018-10-6'); 

INSERT INTO 
log_line values
(1, 'ZB2323', '2018-10-15', '8:00', '1:00', 5),
(2, 'TL5665', '2018-10-3', '9:00', '5:00', 8),
(3, 'TL4333', '2018-10-6', '8:00', '5:00', 9),
(4, 'TL5422', '2018-10-6', '12:00', '5:00', 5); 

INSERT INTO
emp_schedule values
('S343',4, 20),
('S232',5, 32),
('S235',6, 8); 

INSERT INTO
sched_line values
(1, 'S343', '2018-10-3', '8:00', '5:00', 9),
(2, 'S232', '2018-10-6', '8:00', '5:00', 9),
(3, 'S235', '2018-10-25', '9:00', '1:00', 4); 



insert into
customer (cust_fname, cust_lname, cust_phone, cust_email) values
('James', 'Miller', '704-522-3323', 'jmiller@gmail.com'),
('Will', 'Timon', '704-547-7858', 'willtimon@hotmail.com'),
('Laurie', 'Ambose', '826-546-7852', 'laurieA@gmail.com'),
('Jason', 'Willy', '704-653-5646', 'Jwilly@gmail.com'); 

insert into
invoice (cust_id, invoice_checkout_date, invoice_subtotal, invoice_tax, invoice_total, invoice_dueDate)
 values
(1, '2018-10-15', 1.00, 0.35, (1+.35), '2018-10-20'),
(2, '2018-10-08', 2.00, 0.40, (2+.40), '2018-10-14'),
(3, '2018-10-12', 1.00, 0.35, (1+.35), '2018-10-17'); 


insert into 
movietype values
('ROM101', 'Romance'),
('ACT101', 'ACTION'),
('DRA101', 'DRAMA'),
('NEW101', 'New Release'); 

INSERT INTO 
movie (movietype_id, movie_title, movie_copies, movie_desirable, movie_date_acquired, movie_rental_fee,
movie_days_instock)
values
('NEW101', 'Love in Paradise', 3, 'Y', '2018-10-10', 1.00, 6),
('NEW101', 'Somewhere Yonder', 2, 'Y', '2018-10-1', 1.00, 15),
('ROM101', 'You and I', 2, 'Y', '2018-9-1', 1.00, 46),
('ACT101', 'Somewhere Yonder', 2, 'Y', '2018-9-5', 1.00, 41),
('NEW101', 'Revenge Here', 4, 'Y', '2018-10-2', 1.00, 10); 



INSERT INTO 
invoice_line (invoice_id, movie_id, inv_line_quantity, inv_line_total)
values
(1000, 1, 3, 1.00),
(1001,  2, 5, 1.00),
(1002, 3, 2, 1.00); 

insert into
movieout values
(1, 1000, 1, '2018-10-20', '2018-10-29', '2018-10-26', 2.00, 3), 
(2, 1001, 2, '2018-10-14', '2018-10-20', '2018-10-20', 0, 0),
(3, 1002, 3, '2018-10-14', '2018-10-20', '2018-10-20', 0, 0); 

insert into 
vendor (vend_name, vend_phone, vend_email, vend_address, vend_city, vend_state,
vend_zipcode, vend_potential)
values
('Sun', '704-568-9856', 'suncorp@gmail.com', '8569 Sun Drive', 'Charlotte', 'NC', '28206', 'Y'),
('Ritze', '705-658-8656', 'ritze@gmail.com', '2342 Right Lane', 'Charlotte', 'NC', '34522', 'N');

INSERT INTO
vendor_order (vend_id, v_order_movie_id, v_order_qty) values
(1000, 'RU222', 33),
(1001, 'RU231', 40);





