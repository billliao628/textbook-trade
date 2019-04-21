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
* Each account is able to search zero or many search.
* Each account is also able to post zero or many post.
* Each search is searched by one account.
* Each search may search for one textbook.
* Each textbook is able to be searched by only one search.
* Each search may also search for one couse.
* Each course is able to be searched by only one search.
* Each course many required many textbook.
* Each textbook may be required by many different courses.
* Each textbook may have zero to many sell post.
* Each textbook may have zero to many rental post.
* Each post can be a sell post and it can also not be.
* Each post can be a rental post and it can also not be.
* Each sell post contains a textbook for sell.
* Each rental post contains a textbook for rental.

## ER-Diagram
---------------------------------------
The following ERD is created by MYSQLWorkbench
![image](https://github.com/billliao628/textbook-trade/blob/master/Textbook_Trade_ERD.png)

## Implementation
---------------------------------------
The code for creating the database, tables, and queries are in the following link: https://github.com/billliao628/textbook-trade/blob/master/Textbook_Trade.sql

### Create

## 
