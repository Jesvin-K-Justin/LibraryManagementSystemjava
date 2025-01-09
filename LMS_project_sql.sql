create database lms;

use lms;

create table studentLMS (stdId int, stdName varchar(25), reg_no int,class varchar(10), phone_no BIGINT(13));

ALTER TABLE studentLMS
MODIFY COLUMN stdId INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE studentLMS
MODIFY COLUMN reg_no INT  unique  ;

ALTER TABLE studentLMS
MODIFY COLUMN reg_no INT NOT null ;

desc studentLMS;



select * from studentLMS;

create table Book (bkId int, bkName varchar(25), bk_pub varchar(25),bkPrice int, bkYear int);

ALTER TABLE Book
MODIFY COLUMN bkId INT AUTO_INCREMENT PRIMARY KEY;

select * from Book;

create table issue (issueId INT AUTO_INCREMENT PRIMARY KEY,bkId int, reg_no int, issueDate varchar(25), dueDate varchar(25),returnBook varchar(10));


select * from issue;

select issue.reg_no, studentLMS.stdName, issue.bkId, Book.bkName, issue.issueDate, issue.dueDate from studentLMS inner join Book inner join issue where Book.bkID=issue.bkID and studentLMS.reg_no=issue.reg_no and issue.returnBook='NO' ;

