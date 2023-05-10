INSERT INTO course 
VALUES 
('12223', 'Compilers', 'Compilers: Principles, Techniques, and Tools', '4', 'CSPC 121', '1'),
('12345', 'Introduction to C++', 'C++ Concurrency in Action', '4', 'MATH 061', '1'),
('32241', 'Energy and Sustainability', 'Introduction to Energy and Sustainability', '4', NULL, '6'),
('37891', 'Thermodynamics, Kinetic Theory, and Statistical Physics', 'Thermodynamics, Kinetic Theory, and Statistical Thermodynamics (3rd Edition)', '4', 'PHYS 021', '6');

INSERT INTO department (chair_person, d_name, telephone, d_location)
VALUES 
('909787262','Computer Science','6262246662','Los Angeles, CA'),
('123921200', 'Physics', '7141234567', 'Stanford, CA');

INSERT INTO professor 
VALUES 
 ('123334567', '1', 'Chris Martin', 'M', '562', '3456765', '55555 Rojas St', 'Cupertino', '87638', 'CA', 'Masters', 'Associate'),
 ('123921200', '6', 'Mary Dickinson', 'F', '626', '2345431', '6787 Angel St', 'Fullerton', '92831', 'CA', 'Masters', 'Instructor'),
 ('909787262', '1', 'Alan Turing', 'M', '909', '2637787', '5611 Computer Way', 'Sunnyvill', '76599', 'CA', 'PHD', 'Professor');

INSERT INTO student 
VALUES ('0192742033', '555 Loser St, Fullerton CA 92831', 'Napolean', 'Tallguy', '6267147777', '6', NULL),
('1235526377', '789 Katherine St, Fullerton CA 92831', 'Katherine', 'Chen', '6666666666', '6', NULL),
('2639998011', '234 Wizard Ln, Rowland Heights CA 91748', 'Merlin', 'Ambrosius', '8382231234', '6', '1'),
('2837293749', '910 Baker St, Riverside CA 92509', 'Gerry', 'Rafferty', '7142346546', '1', NULL),
('2974051836', '123 Main St, Rowland Heights CA 91748', 'John', 'Doe', '1234567890', '1', '6'),
('5401379826', '456 Elm St, Fullerton CA 92831', 'Jane', 'Smith', '2345678901', '6', NULL),
('8907254163', '789 Oak St, Riverside CA 92501', 'Bob', 'Johnson', '3456789012', '1', '6'),
('9898766540', '971 Jewellery Ln, Rowland Heights CA 91748', 'Muffin', 'Man', '2731117777', '1', '6');

INSERT INTO section 
VALUES 
('1', '12345', '909787262', 'CS-300', '35', 'M W', '9:00am', '11:00am'),
('2', '12345', '123334567', 'CS-300', '35', 'M W', '11:15am', '1:00am'),
('3', '12223', '909787262', 'CS-210', '20', 'T TH', '10:00am', '12:00am'),
('4', '12223', '123334567', 'CS-210', '20', 'T TH', '7:00pm', '9:45pm'),
('7', '32241', '123921200', 'HUM-044', '40', 'T TH', '10:00am', '12:00am'),
('8', '32241', '123921200', 'HUM-030', '25', 'T TH', '5:00pm', '7:30pm'),
('9', '37891', '123921200', 'HUM-424', '20', 'M W', '8:00am', '10:30am'),
('10', '37891', '123921200', 'HUM-409', '15', 'M W', '3:00pm', '5:45pm');

INSERT INTO enrollment_records
VALUES 
	('B+', '2639998011', '1', '12345'),
	('A-', '2837293749', '1', '12345'),
	('C', '2974051836', '2', '12345'),
	('B+', '8907254163', '2', '12345'),
	('B+', '9898766540', '2', '12345'),
	('A', '2639998011', '3', '12223'),
	('A', '2837293749', '3', '12223'),
	('A-', '2974051836', '3', '12223'),
	('A', '8907254163', '3', '12223'),
	('C', '9898766540', '4', '12223'),
	('C-', '1235526377', '7', '32241'),
	('C', '2639998011', '7', '32241'),
	('A', '2974051836', '7', '32241'),
	('A', '5401379826', '7', '32241'),
	('B-', '8907254163', '7', '32241'),
	('B-', '9898766540', '8', '32241'),
	('C-', '0192742033', '9', '37891'),
	('C-', '1235526377', '9', '37891'),
	('C-', '2639998011', '9', '37891'),
	('C-', '5401379826', '9', '37891');



