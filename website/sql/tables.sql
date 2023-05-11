CREATE TABLE student (
	cwid VARCHAR(255) PRIMARY KEY,
    addr TEXT,
    fname VARCHAR(255),
    lname VARCHAR(255),
    telephone VARCHAR(11),
    major INT,
    minor INT,
    FOREIGN KEY(major) REFERENCES department(d_id),
	FOREIGN KEY(minor) REFERENCES department(d_id)
 );
 
 -- this was to add foreign keys after initializing the table ------------------
 ALTER TABLE student 
 ADD COLUMN minor INT;
 ALTER TABLE student
 ADD CONSTRAINT fk_minor 
 FOREIGN KEY (minor) REFERENCES department (d_id);
-- this was to add foreign keys after initializing the table ------------------

CREATE TABLE professor (
     p_ssn INT PRIMARY KEY,
     department INT,
     p_name VARCHAR(255),
     sex CHAR(1),
     area_code VARCHAR(3),
     phone_number VARCHAR(7),
     street VARCHAR(64),
     city VARCHAR(256),
     zip VARCHAR(5),
     state VARCHAR(2),
	 college_deg VARCHAR(255), 
	 title VARCHAR(10),
  	 FOREIGN KEY(department) REFERENCES department(d_id)
); 

-- this was to add foreign keys after initializing the table ------------------
 ALTER TABLE professor 
 ADD COLUMN d_id INT;

 ALTER TABLE professor 
 ADD CONSTRAINT fk_department 
 FOREIGN KEY(department) REFERENCES department(d_id);
-- this was to add foreign keys after initializing the table ------------------

CREATE TABLE department (
 	d_id INT,
	PRIMARY KEY(d_id),
	chair_person INT,
	d_name VARCHAR(255),
	telephone VARCHAR(11),
	d_location VARCHAR(255),
 	FOREIGN KEY(chair_person) REFERENCES professor(p_ssn)
);

-- this was to add foreign keys after initializing the table ------------------
ALTER TABLE department 
ADD COLUMN chair_person INT;
ALTER TABLE department  
ADD CONSTRAINT fk_chair_person
FOREIGN KEY(chair_person) REFERENCES professor(p_ssn);
-- this was to add foreign keys after initializing the table ------------------

CREATE TABLE course (
 	c_id INT,
 	PRIMARY KEY(c_id),
     dept_id INT,
     title VARCHAR(255),
     textbook TEXT, 
     units VARCHAR(10), 
     pre_req VARCHAR(255),
     FOREIGN KEY(dept_id) REFERENCES department(d_id)
);

-- this was to add foreign keys after initializing the table ------------------
 ALTER TABLE course 
 ADD COLUMN department INT;

 ALTER TABLE course  
 ADD CONSTRAINT fk_dept_id
 FOREIGN KEY(dept_id) REFERENCES department(d_id);
-- this was to add foreign keys after initializing the table ------------------

CREATE TABLE section (
 	s_id INT,
 	PRIMARY KEY(s_id),
     course INT,
     professor INT,
     classroom VARCHAR(255),
     num_seat INT, 
     meeting_days VARCHAR(255),
     beg_time VARCHAR(20),
 	 end_time VARCHAR(20),
     FOREIGN KEY(course) REFERENCES course(course),
     FOREIGN KEY(professor) REFERENCES professor(p_ssn)
); 

-- this was to add foreign keys after initializing the table ------------------
ALTER TABLE section 
ADD COLUMN course INT;
ALTER TABLE section
ADD CONSTRAINT fk_course
FOREIGN KEY(course) REFERENCES course(c_id);
-- this was to add foreign keys after initializing the table ------------------

CREATE TABLE enrollment_records (
 	grade VARCHAR(2),
    student VARCHAR(255), 
	course INT,
	section INT,
	FOREIGN KEY(student) REFERENCES student(cwid),
	FOREIGN KEY(section) REFERENCES section(s_id),
	FOREIGN KEY(course) REFERENCES course(c_id)
);

-- this was to add foreign keys after initializing the table ------------------
ALTER TABLE enrollment_records 
ADD COLUMN  course_id INT;

ALTER TABLE enrollment_records
ADD CONSTRAINT fk_course_id
FOREIGN KEY(course_id) REFERENCES course(c_id);
-- this was to add foreign keys after initializing the table ------------------