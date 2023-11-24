INSERT INTO employees (
	first_name, 
	surname,
	gender, 
	address, 
	email,
	depart_id,
	role_id,
	salary_id,
	overtime_id)
VALUES	
	('Jane', 'Johna', 'F', '167 Pensive Avenue, Harbor', 'Janej@gmail.com', 5, 2, 3, 4),
	('Joey', 'Trey', 'M', '895 Swambla Str, Nixon Estate', 'Joeytrey@gmail.com', 6, 4, 1, 3),
	('Nelson', 'Pendra', 'M', '259 German Road, Hillside', 'NPendra@gmail.com', 7, 1, 2, 2),
	('Amber', 'Tuckson', 'F', 'Unit 3, Johnson Ave, Penwood', 'Tuckson.amber@gmail.com', 8, 3, 4, 1);

INSERT INTO department (
	depart_name, 
	depart_city)
VALUES 
	('Marketing', 'Junip'),
	('IT', 'Pensilan'),
	('Accounting', 'Blue Burcon'),
	('Production', 'Heptin');

INSERT INTO	overtime_hours (overtime_hours)
VALUES 
	('1 hour'),
	('2 hours'),
	('3 hours'),
	('4 hours');
	
INSERT INTO roles (role)
VALUES 
	('Worker'),
	('Manager'),
	('Supervisor'),
	('Administrator');
	
INSERT INTO salaries (salary_pa)
VALUES 
	(10000),
	(12000),
	(15000),
	(20000);

SELECT * FROM public.employees;