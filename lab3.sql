use data_ucb

create table STUDENTS(
ID			 INT		 IDENTITY(1, 1) NOT NULL PRIMARY KEY,
STUDENT_NAME VARCHAR(50)				NOT NULL,
GENDER		 CHAR,
AGE			 INT
)

insert into STUDENTS (STUDENT_NAME, GENDER, AGE)
values('Daniel Roland Peñaranda Colque', 'M', 18)

insert into STUDENTS (STUDENT_NAME, GENDER, AGE)
values('Miriam Leticia Peñaranda Colque', 'F', 13)

select STUDENT_NAME from STUDENTS where GENDER = 'F'