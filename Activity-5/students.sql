-- ITEM 1

CREATE TABLE students (
	id SERIAL PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	middle_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	age numeric (2, 0) DEFAULT 0,
	location varchar(100) NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES
    (
    	1, 
    	'Juan',
    	'Blank',
    	'Cruz',
    	18,
    	'Manila'
    ),
    (
    	2, 
    	'Anne',
    	'Blank',
    	'Wall',
    	20,
    	'Manila'
    ),
    (
    	3, 
    	'Theresa',
    	'Blank',
    	'Joseph',
    	21,
    	'Manila'
    ),
    (
    	4, 
    	'Isaac',
    	'Blank',
    	'Gray',
    	19,
    	'Laguna'
    ),
    (
    	5,
    	'Zack',
    	'Blank',
    	'Matthews',
    	22,
    	'Marikina'
    ),
    (
    	6,
    	'Finn',
    	'Blank',
    	'Lam',
    	25,
    	'Manila'
    );

-- updating first student
UPDATE students   
	SET first_name = 'Ivan',
		middle_name = 'Ingram',
		last_name = 'Howard',
		age = 25,
		location = 'Bulacan'
	WHERE id = 1;

-- deleting last student entry
DELETE from students
	ORDER by id DESC LIMIT 1
	
-- ITEM 2
-- counting number of students
SELECT count(*) FROM students;

-- selecting students from Manila
SELECT *
	FROM students
	WHERE location = 'Manila';

-- displaying average age of students
SELECT AVG(age) from students;

-- displaying students by age in desc order
SELECT *
	FROM students
	ORDER BY age DESC;