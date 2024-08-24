use user_detail;

select * from roles;

CREATE TABLE user_has_role (
    id INT NOT NULL PRIMARY KEY,
    role_start_time TIMESTAMP,
    role_end_time DATETIME,
    user_account_id INT NOT NULL unique,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id));

drop table user_has_role

select * from user_has_role;

create table user_account(
id int not null primary key,
user_name varchar(100),
email varchar(100),
password varchar(200),
password_salt varchar(50),
password_hash_algorithm varchar(50)
);

select * from user_account;

create table user_has_status(
id int not null primary key,
status_start_time timestamp,
status_end_time datetime,
user_account_id int not null ,
status_id int,
foreign key (user_account_id) references user_has_role(user_account_id));

select * from user_has_status;

CREATE TABLE status (
    id INT NOT NULL PRIMARY KEY,       
    status_name VARCHAR(100) NOT NULL, 
    is_user_working BIT  NOT NULL  
);

select * from status;

/*We have created five tables successfully with foreign keys, primary keys and relational conditions*/

