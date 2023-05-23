--1. Create a table MY_EMPLOYEE table to use for lab. 
--Field                  Data type               Constraint type
--id                         number (4)          PRIMARY KEY, NOT NULL
--last_name         varchar2 (25)
--first_name        varchar2             (25) NOT NULL
--userid                varchar2 (25)      UNIQUE
--salary              number (9,2


CREATE TABLE My_Employee
(id number (4) constraint eid_pk_nn not null primary key,
last_name varchar2 (25),
first_name varchar2(25) constraint fname_nn not null,
userid varchar2 (25) constraint user_uq unique,
salary number (9,2));