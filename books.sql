Drop Database if exists books; 
Create Database books;
USE books;
Drop table if exists authors; 
Create table authors
(author_id INT auto_increment NOT NULL,name varchar(30),country varchar(20), Primary key(author_id));
Drop table if exists books;
Create table books
(book_id int auto_increment not null, 
author_id int, 
book_name varchar(50),
category Varchar(20), 
Primary key (book_id) 
);
insert into authors(name, country)
values('SCOTT GALLOWAY', 'USA'),
('ANDRE AGASSI', 'USA'),
('MORGAN HOUSSEL', 'USA'),
('JORDAN PETERSON', 'CANADA'),
('PHIL KNIGHT', 'USA');
