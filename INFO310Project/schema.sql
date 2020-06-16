/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  vincenttoailoa
 * Created: 24/04/2020
 */
-- create table Student (
--     Username varchar(50) ,
--     Password varchar(50) ,
--     FirstName varchar(50) ,
--     LastName varchar(50) ,
--     Email varchar(150) ,
--     CellNumber varchar(50) ,
--     StudentID integer ,
--     HighSchool varchar(150) ,
--     Gender varchar(20) ,
-- 
--     constraint Student_PK primary key (studentID)
-- 
-- );
-- INSERT INTO student(USERNAME, PASSWORD,FIRSTNAME,LASTNAME ,EMAIL ,CELLNUMBER ,HIGHSCHOOL ,GENDER ,SIGNUPDATE ,YEAROFSTUDY )
-- VALUES ('test','test','test','test','test','test','test','test',TO_DATE('17/12/2015', 'DD/MM/YYYY'),'test');

create table Student (
    StudentID integer not null auto_increment,
    Username varchar(50) not null UNIQUE,
    Password varchar(50) not null,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Email varchar(150) not null,
    CellNumber varchar(50) not null,
    HighSchool varchar(150) not null,
    Gender varchar(20) not null,
    signUpDate date not null,
    yearOfStudy varchar(20) not null,
    constraint Student_PK primary key (studentID)

);

--     private String studentid;
--     private String departmentid;
--     private String ranking;
--     private boolean accepted;
--     private String status;
--     private String description;

INSERT INTO application (studentid, departmentid, RANKING ,ACCEPTED ,STATUS , description) VALUES ('1','1','3',true,'5','6')

create table Application(
    studentid varchar(25) not null,
    departmentid varchar(25) not null,
    ranking varchar(20) not null,
    accepted boolean not null,
    status varchar(20) not null,
    description varchar(500) not null
    
   
);

create table Department(
    departmentname varchar(30) not null,
    departmentid varchar(20) not null,
    description varchar(500) not null
);

-- INSERT INTO  staff( USERNAME ,PASSWORD ,FIRSTNAME ,LASTNAME ,EMAIL ,CELLNUMBER ,GENDER,DEPARTMENTID ) VALUES('test','123','nametestt','lastname','g@email.com','0221099412','man','test id');

create table Staff(
    staffid integer not null  auto_increment,
    username varchar(30) not null UNIQUE,
    password varchar(30) not null,
    firstName varchar(30) not null,
    lastname varchar(30) not null,
    email varchar(50) not null,
    cellnumber varchar(25) not null,
    gender varchar(10) not null,
    departmentID varchar(10) not null
   
);

    
