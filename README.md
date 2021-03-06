# Database Project: Textbook-Trade

-------------------------------------

## Motivation
--------------------------------------
* In the United States, there are only few ways that students are able to aquire textbook. Either go to bookstore to buy expensive textbook, go on Amazon and Chegg, and find the resourcess online. 
* A survey from campusbooks.com has shown that 66% of students opt out of buying a textbook because it’s too expensive as well as 63% searching online in response to lack of textbooks and 58% of students sharing textbooks with friends. Moreover, after finishing the course, many students could only choose to sell it back to the bookstore with a cheap price.
* This seems the same in Taiwan. Many students do not buy textbook because it is too expensive and they do not have place to sell the textbook other than to other students. 
* Therefore, having a website or an app will provide a platform for students to aquire textbooks from their fellow students . This platform will also provide students to either sell or rent the textbooks after they are done with their course in the price they would like.
* From the business side, the platform can either charge some service fee like Uber or just gained benefit by distributing advertisement such as school and companies advertisement.
* We are also able to use the data collected to do data analysis to gain more insights. 

## Goal
--------------------------------------
* In this project, we will create a database for the platform which provide a platform for students to buy, sell, and rent textbooks.
* We will also do some queries from the database we created.

## Business Rule
--------------------------------------
* An account is able to search zero or many search.
* An account is also able to post zero or many post.
* A search is searched by one account.
* A search may search for one textbook.
* A textbook is able to be searched by only one search.
* A search may also search for one couse.
* A course is able to be searched by only one search.
* A course many required many textbook.
* A textbook may be required by many different courses.
* A textbook may have zero to many sell post.
* A textbook may have zero to many rental post.
* A post can be a sell post and it can also not be.
* A post can be a rental post and it can also not be.
* A sell post contains a textbook for sell.
* A rental post contains a textbook for rental.
2e
## ER-Diagram
---------------------------------------
The following ERD is created by MYSQLWorkbench
![image](https://github.com/billliao628/textbook-trade/blob/master/Textbook_Trade_ERD.png)
* Note: TINYINT(1) in post table stands for boolean, MYSQLWorkbench prefer tinytnt(1) instead of boolean. However, we will code boolean as datatype

## Implementation
---------------------------------------
### The code for creating the database, tables, and queries are in the following link: https://github.com/billliao628/textbook-trade/blob/master/Textbook_Trade.sql

#### Database and Tables
----------------------------------------
##### Database Textbook-Trade
https://github.com/billliao628/textbook-trade/blob/master/database_textbook_trade.png

##### Tables description
* AccountTable:
https://github.com/billliao628/textbook-trade/blob/master/Account_Table.png
* Course Table:
https://github.com/billliao628/textbook-trade/blob/master/Course_Table.png
* Post Table:
https://github.com/billliao628/textbook-trade/blob/master/Post_Table.png
* Search Table
https://github.com/billliao628/textbook-trade/blob/master/Search_Table.png
* Course_Textbook Table:
https://github.com/billliao628/textbook-trade/blob/master/Table_Course_Textbook.png
* Sell_Post Table:
https://github.com/billliao628/textbook-trade/blob/master/Table_Sell_Post.png
* Rental_Post Table:
https://github.com/billliao628/textbook-trade/blob/master/Table_Rental_Post.png
* Textbook Table:
https://github.com/billliao628/textbook-trade/blob/master/Textbook_Table.png

##### Tables With Values
* Account Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Account.png
* Course Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Course.png
* Post Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Post.png
* Search Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Search.png
* Course_Textbook Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Course_Textbook.png
* Sell_Post Table Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Sell_Post.png
* Rental_Post Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Rental_Post.png
* Textbook Values:
https://github.com/billliao628/textbook-trade/blob/master/Values_Textbook.png

#### Some Query Reports
------------------------------------
1. This report shows what books has the most post.
```MySQL
select  * from TEXTBOOK
where In_Stock=(select Max(In_Stock) from TEXTBOOK);
```
![image](https://github.com/billliao628/textbook-trade/blob/master/First_Report.png)


2. This report shows how many students from each school use the platform.
```MySQL
select count(account_id), school
from account
group by school order by count(account_id) desc;
```
![image](https://github.com/billliao628/textbook-trade/blob/master/Second_Report.png)


3. This report shows us what books cost higher (>100 dollars) in either sell_post and rental_post.
```MySQL
SELECT sell_post.sell_id, sell_post.sell_price, rental_post.rental_id , rental_post.rental_price , textbook.title , textbook.ISBN
FROM textbook 
LEFT JOIN sell_post ON sell_post.ISBN=textbook.ISBN
LEFT JOIN rental_post ON rental_post.ISBN=textbook.ISBN 
where sell_post.sell_price>100
or rental_post.rental_price>100;
```
![image](https://github.com/billliao628/textbook-trade/blob/master/Third_Report.png)

4. This report shows if the same textbook is required by different courses
```MySQL
SELECT t.ISBN, title, count(t.title) as book_course_requried
from textbook t, course_textbook ct
where t.ISBN=ct.ISBN_1
or t.ISBN=ct.ISBN_2
or t.ISBN=ct.ISBN_3
group by t.ISBN  having count(t.title)>1;
```
![image](https://github.com/billliao628/textbook-trade/blob/master/Fourth_Report.png)

## Conclusion
------------------------------------
* This is only a simple version of the database of a platform for student to sell, buy, rent textbooks.
* Database will be more complex if want to make it a product.
* We will also need to decide whether we should develop website or an app first for the users.
* This idea and product if further developed will target mainly on Taiwan and the United States market first.
