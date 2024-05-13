create table student
    (id varchar(9),
     name varchar(40),
     course_id varchar(5),
     tcc_id varchar(7),
     primary key (id),
     foreign key (tcc_id) references tcc_group (id) on delete set null
    );

create table takes 
    (student_id varchar(9),
     discipline_id varchar(6),
     semester varchar(3),  
     year numeric(4),
     grade numeric(2,1),
     primary key (student_id, discipline_id, semester, year),
     foreign key (student_id) references student (id) on delete cascade,
     foreign key (discipline_id) references discipline (id) on delete cascade
    );

create table discipline 
    (id varchar(6),
     name varchar(25),
     hours numeric(3),
     class_id varchar(4),
     departament_name varchar(20),
     primary key (id),
     foreign key (departament_name) references departament (name) on delete set null
    );

create table professor 
    (id varchar(6),
     name varchar(40),
     salary numeric(8,2),
     departament_name varchar(20),
     primary key (id),
     foreign key (departament_name) references departament (name) on delete set null
    );
  
create table teaches 
    (discipline_id varchar(6),
     semester varchar(3),
     year numeric(4),
     professor_id varchar(6),
     primary key (discipline_id, semester, year, professor_id),
     foreign key (discipline_id) references discipline (id) on delete cascade,
     foreign key (professor_id) references professor (id) on delete cascade
    );
  
create table departament 
    (name varchar(20),
     boss_id varchar(6), 
     primary key (name),
     foreign key (boss_id) references professor (id) on delete set null
    );
  
create table course 
    (id varchar(5),
     name varchar(20),
     primary key (id)
    );

create table course_curriculum 
    (course_id varchar(5),
     discipline_id varchar(6),
     primary key (course_id, discipline_id),
     foreign key (course_id) references course (id) on delete cascade,
     foreign key (discipline_id) references discipline (id) on delete cascade     
    );
  
create table tcc_group 
    (id varchar(9),
     professor_id varchar(6),
     primary key (id),
     foreign key (professor_id) references professor (id) on delete set null
    );

create table graduated 
    (student_id varchar(9),
     course_id varchar(5),
     year numeric(4),
     semester varchar(3),
     primary key (student_id),
     foreign key (student_id) references student (id) on delete cascade,
     foreign key (course_id) references course (id) on delete set null
    );
  