create database textbook_trade;

use textbook_trade;

create table ACCOUNT
	(Account_ID varchar(45) primary key,
    Password varchar(45) NOT NULL,
    School_Email varchar(45) NOT NULL,
    School varchar(45) NOT NULL,
    Name varchar(45) NOT NULL,
    Year int(4) NOT NULL,
    Major varchar(45) NOT NULL,
    Phone_num varchar(12) NOT NULL);

create table POST
	(Post_ID varchar(45) primary key,
    Status boolean NOT NULL,
    Account_ID varchar(45) NOT NULL,
    Foreign Key(Account_ID) references ACCOUNT(Account_ID));

create table COURSE
	(Course_Name varchar(45) primary key);

create table TEXTBOOK
	(ISBN varchar(17) primary key,
    Title varchar(45) NOT NULL,
    Author varchar(45) NOT NULL,
    Edition varchar(2) NOT NULL,
    In_Stock int NOT NULL);

create table COURSE_TEXTBOOK
	(Course_Name varchar(45),
    ISBN_1 varchar(17),
    ISBN_2 varchar(17),
    ISBN_3 varchar(17),
    primary key(Course_Name, ISBN_1),
	Foreign Key(Course_Name) references Course(Course_Name),
    Foreign Key(ISBN_1) references TEXTBOOK(ISBN),
    Foreign Key(ISBN_2) references TEXTBOOK(ISBN),
    Foreign Key(ISBN_3) references TEXTBOOK(ISBN));

create table SEARCH
	(Search_ID varchar(45) primary key,
    Account_ID varchar(45) NOT NULL,
    Course_Name varchar(45),
    ISBN varchar(17),
	Foreign Key(Account_ID) references ACCOUNT(Account_ID),
	Foreign Key(Course_Name) references COURSE(Course_Name),
    Foreign Key(ISBN) references TEXTBOOK(ISBN));

create table SELL_POST
	(Sell_ID varchar(45) primary key,
    Sell_Date varchar(10) NOT NULL,
    Sell_Price decimal(5,2) NOT NULL,
    Sell_Condition varchar(45) NOT NULL,
    Post_ID varchar(45) NOT NULL,
    ISBN varchar(17) NOT NULL,
    Foreign Key(Post_ID) references POST(Post_ID),
    Foreign Key (ISBN) references TEXTBOOK(ISBN));

create table RENTAL_POST
	(Rental_ID varchar(45) primary key,
    Rental_Date varchar(10) NOT NULL,
    Return_Date varchar(10) NOT NULL,
	Rental_Price decimal(5,2) NOT NULL,
    Rental_Condition varchar(45) NOT NULL,
    Return_Condition varchar(45) NOT NULL,
    Late_Fee decimal(5,2) NOT NULL,
    POST_ID varchar(45) NOT NULL,
    ISBN varchar(17) NOT NULL,
	Foreign Key(Post_ID) references POST(Post_ID),
    Foreign Key (ISBN) references TEXTBOOK(ISBN));
    
desc account;
desc post;
desc course;
desc textbook;
desc search;
desc sell_post;
desc rental_post;    

drop database textbook_trade;

/*values in table account*/
insert into account
values
('A1', 'google123', 'sparames@binghamton.edu', 'Binghamton University', 'Srikanth Parameswaran', 2022, 'MIS', '607-322-9381');

insert into account
values
('A2', 'google124', 'rwu@binghamton.edu', 'Binghamton University', 'Richard Wu', 2019, 'FIN', '607-343-3245');

insert into account
values
('A3', 'goglekid322', 'ttina@binghamton.edu', 'Binghamton University', 'Toole Tina', 2018, 'ACCT', '607-493-3995');

insert into account
values
('A4', 'ji3orke41', 'jsmith@ucla.edu', 'University of California, Los Angeles', 'John Smith', 2022, 'ECON', '415-857-3282');

insert into account
values
('A5', 'kfjofi213', 'mwood@ucla.edu', 'University of California, Los Angeles', 'Megan Wood', 2021, 'ENGL', '415-837-3233');

insert into account
values
('A6', 'fofueml312', 'ehalley@ucla.edu', 'University of California, Los Angeles', 'Edmond Halley', 2023, 'MGMT', '415-973-5938');

insert into account
values
('A7', 'abback321', 'mborn@ucla.edu', 'University of California, Los Angeles', 'Max Born', 2020, 'MKTG', '415-435-4499');

insert into account
values
('A8', 'oilman847', 'cwu@ucla.edu', 'University of California, Los Angeles', 'Chien-Shiung Wu', 2021, 'MIS', '415-132-6432');

insert into account
values
('A9', 'pooglekg3', 'pmatzinger@cornell.edu', 'Cornell University', 'Polly Matzinger', 2020, 'FIN', '907-748-2329');

insert into account
values
('A10', 'zxzxzx123', 'sboysen@cornell.edu', 'Cornell University', 'Sarah Boysen', 2019, 'CS', '907-394-8746');

select * from account;

/*values in table post*/
insert into post
values
('B1',TRUE,'A1');

insert into post
values
('B2',TRUE,'A1');

insert into post
values
('B3',TRUE,'A1');

insert into post
values
('B4',TRUE,'A6');

insert into post
values
('B5',TRUE,'A5');

insert into post
values
('B6',TRUE,'A3');

insert into post
values
('B7',TRUE,'A2');

insert into post
values
('B8',FALSE,'A9');

insert into post
values
('B9',TRUE,'A10');

insert into post
values
('B10',FALSE,'A2');

select * from post;

/*values in table course*/
insert into course
values
('Introduction_To_Writing');

insert into course
values
('Introduction_To_Autobiography');

insert into course
values
('Introduction_To_Accounting');

insert into course
values
('Self-Care101');

insert into course
values
('Intermediate_Writing');

insert into course
values
('Learning_Binghamton');

insert into course
values
('Introduction_To_Pop-Cultre');

select * from course;

/*values in table textbook*/
Insert into textbook
values 
('978-3-16-148410-0', 'Harry Potter', 'JK Rowling', '4', 5);

Insert into textbook
values 
('230-8-46-923418-3', 'The Autobiography of Malcom X', 'Malcolm X', '6', 3);

Insert into textbook
values 
('360-2-22-123456-7', 'Managerial Accounting', 'Derek Jeter', '2', 10);

Insert into textbook
values 
('295-1-56-654321-2', 'How to Tie Your Shoes', 'Pennywise the Clown', '1', 3);

Insert into textbook
values 
('627-7-92-394857-0', 'Wheres Waldo?', 'Donde Esta', '3', 7);

Insert into textbook
values 
('098-6-89-485769-6', 'Binghamton University Manual', 'Binghamton University', '10', 4);

Insert into textbook
values 
('940-4-32-102938-5', 'The Cat in The Hat', 'Dr. Seuss', '4', 12);

Insert into textbook
values 
('893-5-09-456783-3', 'Wrist on Froze', 'Ski Mask the Slump God', '2', 2);

Insert into textbook
values 
('784-3-89-48296-2', 'The Flinstones', 'Fred Flinstone', '7', 4);

Insert into textbook
values 
('486-4-87-143557-3', 'Skrrrrrrrrt', 'Lil Uzi Vert', '2', 30);

select * from textbook;

/*values in table course_textbook*/
insert into course_textbook(course_name, ISBN_1, ISBN_2)
values
('Introduction_To_Writing', '978-3-16-148410-0', '940-4-32-102938-5');

insert into course_textbook(course_name, ISBN_1)
values
('Introduction_To_Autobiography', '230-8-46-923418-3');

insert into course_textbook(course_name, ISBN_1)
values
('Introduction_To_Accounting', '360-2-22-123456-7');

insert into course_textbook(course_name, ISBN_1)
values
('Self-Care101', '295-1-56-654321-2');

insert into course_textbook
values
('Intermediate_Writing', '978-3-16-148410-0', '627-7-92-394857-0', '784-3-89-48296-2');

insert into course_textbook(course_name, ISBN_1)
values
('Learning_Binghamton', '098-6-89-485769-6');

insert into course_textbook(course_name, ISBN_1, ISBN_2)
values
('Introduction_To_Pop-Cultre', '486-4-87-143557-3', '893-5-09-456783-3');

select * from course_textbook;

/*values in table search*/
insert into search(search_id, account_id, course_name)
values
('ST1','A4', 'Intermediate_Writing');

insert into search(search_id, account_id, course_name)
values
('ST2','A7', 'Introduction_To_Pop-Cultre');

insert into search(search_id, account_id, course_name)
values
('ST3','A8', 'Introduction_To_Writing');

insert into search(search_id, account_id, course_name)
values
('ST4','A4', 'Self-Care101');

insert into search(search_id, account_id, ISBN)
values
('ST5','A2', '098-6-89-485769-6');

insert into search(search_id, account_id, ISBN)
values
('ST6','A3', '295-1-56-654321-2');

insert into search(search_id, account_id, ISBN)
values
('ST7','A6', '784-3-89-48296-2');

select * from search;

/*values in table sell_post */
insert into sell_post
values
('S1', '01/29/2020', 100.53, 'Good', 'B1', '978-3-16-148410-0');

insert into sell_post
values
('S2', '11/17/2020', 67.68, 'Poor', 'B2', '098-6-89-485769-6');

insert into sell_post
values
('S3', '12/05/2020', 300.00, 'Good', 'B5', '360-2-22-123456-7');

insert into sell_post
values
('S4', '10/03/2017', 400.00, 'Excellent', 'B8', '940-4-32-102938-5');

insert into sell_post
values
('S5', '08/14/2018', 71.25, 'Poor', 'B9', '486-4-87-143557-3');

select * from sell_post;

/*values in table rental_post*/
Insert into rental_post
Values
('R1', '9/01/2018', '12/21/2018', 12.00, 'Good', 'Good', 0.00, 'B3', '295-1-56-654321-2');

Insert into rental_post
Values
('R2', '9/01/2018', '12/21/2018', 25.00, 'Good', 'Poor', 5.00, 'B4', '230-8-46-923418-3');

Insert into rental_post
Values
('R3', '01/15/2018', '05/21/2018', 60.00, 'Excellent', 'Good', 0.00, 'B6', '893-5-09-456783-3');

Insert into rental_post
Values
('R4', '01/15/2018', '05/21/2018', 115.00, 'Good', 'Good', 0.00, 'B7', '627-7-92-394857-0');

Insert into rental_post
Values
('R5', '01/10/2018', '05/16/2018', 16.00, 'Poor', 'Poor', 5.00, 'B10', '784-3-89-48296-2');

select * from rental_post;


/* show which book has the most in stock */
select  * from TEXTBOOK
where In_Stock=(select Max(In_Stock) from TEXTBOOK);

/*count the number of students from each school tbat use the apps*/
select count(account_id), school
from account
group by school order by count(account_id) desc;

/*see which books have price>100 in both rental_post and rental_post*/
SELECT sell_post.sell_id, sell_post.sell_price, rental_post.rental_id , rental_post.rental_price , textbook.title , textbook.ISBN
FROM textbook 
LEFT JOIN sell_post ON sell_post.ISBN=textbook.ISBN
LEFT JOIN rental_post ON rental_post.ISBN=textbook.ISBN 
where sell_post.sell_price>100
or rental_post.rental_price>100;

/*see if textbook is required by different courses*/
SELECT t.ISBN, title, count(t.title) as book_course_requried
from textbook t, course_textbook ct
where t.ISBN=ct.ISBN_1
or t.ISBN=ct.ISBN_2
or t.ISBN=ct.ISBN_3
group by t.ISBN  having count(t.title)>1;







 
