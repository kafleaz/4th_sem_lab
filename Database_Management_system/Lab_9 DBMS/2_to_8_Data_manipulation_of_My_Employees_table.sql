-- 2. Create an INSERT statement to add the rows of data to the my_employee table from the 
--      following sample data.
--ID    Last_name    First_name     UserID      Salary
--1     Patel            Ralph                  Rpatel        895
--2     Dancs          Betty                   Bdancs       860
--3     Biri                Ben                     Bbiri           1100
--4     Newman      Chad                  Cnewman  750
--5     Ropeburn     Audrey             Aropebur    1550

insert all
    into your_employee values (1, 'patel', 'Ralph', 'Rapatel' ,895)
    into your_employee values (2, 'Dancs', 'Betty', 'Bdancs', 860) 
    into your_employee values (3, 'Biri', 'Ben', 'Bbiri', 1100)
    into your_employee values (4, 'Newman', 'Chad', 'Cnewman', 750)
    into your_employee values (5, 'Ropeburn', 'Audery', 'Aropebur', 1550)
select * from dual;



-- 3. Confirm your addition to the table
select * from my_employee;

 -- 4. Make the data addition permanent
 commit;
 
 -- 5. Change the last name of employee 3 to Drexler.
 update my_employee
 set last_name = 'Drexler'
 where id =3;
 
 -- 6. Change the salary to $1,000 for all employees with a salary less than $ 900.
 update my_employee
 set salary = 1000
 where salary <900;
 
 -- 7. Delete Betty Dancs from the my_employee table
 delete 
 from my_employee
 where first_name = 'Betty';
 
 -- 8. commit all pending changes
 commit;

 