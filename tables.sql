create table student {
  id varchar(9) [primary key]
  name varchar(40)
  course_id varchar(5)
  tcc_id varchar(7)
}

create table takes {
  student_id varchar(9) [primary key]
  discipline_id varchar(6) [primary key]
  semester varchar(3) [primary key]  
  year numeric(4) [primary key]
  grade float(2,1)
}

create table discipline {
  id varchar(6) [primary key]
  name varchar(25)
  hours integer(3)
  class_id varchar(4)
  departament_name varchar(20)
}

create table professor {
  id varchar(6) [primary key]
  name varchar(40) 
  salary numeric(8,2)
  departament_name varchar(20)
}

create table teaches {
  discipline_id varchar(6) [primary key]
  semester varchar(3) [primary key]
  year numeric(4) [primary key]
  professor_id varchar(6) [primary key]  
}

create table departament {
  name varchar(20) [primary key]
  boss_id varchar(6) 
}

create table course {
  id varchar(5) [primary key]
  name varchar(20)
}

create table course_curriculum {
  course_id varchar(5) [primary key]
  discipline_id varchar(6) [primary key]
}

create table tcc_group {
  id varchar(9) [primary key]
  professor_id varchar(6)
}

create table graduated {
  student_id varchar(9)
  course_id varchar(5)
  year numeric(4)
  semester varchar(3)
}