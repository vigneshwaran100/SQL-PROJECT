use user_detail;

insert into roles values(1,'Data Scientist');
insert into roles values(2,'Cloud Engineer');
insert into roles values(3,'Web Developer');
insert into roles values(4,'Software Engineer');

select* from roles;
select * from user_has_role

/*now we need to insert the data to user_account table*/
insert into user_account values(1,'vigneshwaran','vigneshwarans@gmail.com','12345678','!@#$%^&','010101110');
select * from  user_account

/*now we need to insert the data to user_has_role table*/
insert into user_has_role values(1,'2024-08-24 12:00:00','2024-08-25 17:00:00', 101, 1);
insert into user_has_role values(2,'2024-08-23 12:00:00','2024-08-24 17:00:00', 102, 2);
insert into user_has_role values(3,'2024-08-22 12:00:00','2024-08-23 17:00:00', 103, 3);
insert into user_has_role values(4,'2024-08-22 12:00:00','2024-08-23 17:00:00', 104, 3);

select * from user_has_role;

/*now we are insert the data into user_has_status*/
insert into user_has_status values(1,'2024-08-24 12:00:00','2024-08-25 17:00:00', 101, 11)
insert into user_has_status values(2,'2024-08-24 12:00:00','2024-08-25 17:00:00', 102, 12)
insert into user_has_status values(3,'2024-08-24 12:00:00','2024-08-25 17:00:00', 103, 13)
insert into user_has_status values(4,'2024-08-24 12:00:00','2024-08-25 17:00:00', 104, 14)

select * from user_has_status


/*now we are insert the data into status table*/
insert into status values(11,'Active',1)
insert into status values(12,'Inactive',0)
insert into status values(13,'pending',1)

select * from status

/*deleting the data from status table*/
delete from status where id between 11 and 13;

/*delete the data from user_has_status table*/
delete from user_has_status where status_id between 11 and 14;

/*delete the data from user_has_role table*/
delete from user_account where user_name='vigneshwaran';
select * from user_account


/*delete the data from user_has_role table*/
delete from user_has_role where role_id between 1 and 3;
select * from user_has_role


