DROP TABLE IF EXISTS `register`;
DROP TABLE IF EXISTS `major`;
DROP TABLE IF EXISTS `students`;
DROP TABLE IF EXISTS `courses`;
DROP TABLE IF EXISTS `degrees`;
DROP TABLE IF EXISTS `departments`;
DROP TABLE IF EXISTS `minor`;

CREATE TABLE students(
	snum int UNIQUE NOT NULL ,
    ssn int UNIQUE NOT NULL,
    name varchar(10),
    gender varchar(1),
    dob datetime,
    c_addr varchar(20),
    c_phone varchar(10),
    p_addr varchar(20),
    p_phone varchar(10),
    primary key (ssn)
);

CREATE TABLE departments(
	code int UNIQUE NOT NULL,
    name varchar(50) UNIQUE NOT NULL,
    phone varchar(10),
    college varchar(20),
    primary key (code, name)
);

CREATE TABLE degrees(
	name varchar(50),
    level varchar(5),
    department_code int,
    primary key (name, level),
    constraint department_code foreign key (department_code) references departments (code)
);

CREATE TABLE courses(
	number int,
    name varchar(50),
    description varchar(50), 
    credithours int,
    level varchar(20),
    department_code int,
    primary key(number, name),
    foreign key (department_code) references departments (code)
);

CREATE TABLE register(
	snum int,
    course_number int,
    regtime varchar(20),
    grade int,
    primary key (snum, course_number),
    foreign key (snum) references students (snum),
    foreign key (course_number) references courses (number)
);

CREATE TABLE major(
	snum int,
    name varchar(50),
    level varchar(5),
	primary key (snum, name, level), 
    foreign key (snum) references students (snum),
    foreign key (name, level) references degrees (name, level)
);

CREATE TABLE minor(
	snum int,
    name varchar(50),
    level varchar(5),
    primary key (snum, name, level),
    foreign key (snum) references students (snum),
    foreign key (name, level) references degrees (name, level)
);