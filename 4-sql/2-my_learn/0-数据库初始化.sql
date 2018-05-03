create database my_learn;

use my_learn;

create table student(
    id varchar(10) primary key, 
    name varchar(20),
    teacher varchar(10)
);

create table teacher(
    id varchar(10) primary key, 
    name varchar(20),
    student varchar(10)
);

create table course(
    id varchar(10) primary key, 
    name varchar(20),
    teacher varchar(10),
    time varchar(10)
);

create table classroom(
    id varchar(10) primary key, 
    place varchar(20)
);



