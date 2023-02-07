DROP TABLE IF EXISTS `students`;
DROP TABLE IF EXISTS `departments`;
DROP TABLE IF EXISTS `degrees`;

CREATE TABLE students(
	snum int,
    ssn int,
    name varchar(10),
    gender varchar(1),
    dob datetime,
    c_addr varchar(20),
    c_phone varchar(10),
    p_addr varchar(20),
    p_phone varchar(10),
    primary key (ssn, snum)
);

CREATE TABLE departments(
	code int,
    name varchar(50),
    phone varchar(10),
    college varchar(20),
    primary key (code, name)
);

CREATE TABLE degrees(
	name varchar(50),
    level varchar(5),
    department_code int,
    foreign key (department_code) references departments (code)
);