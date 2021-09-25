CREATE TABLE notes (
    id SERIAL PRIMARY KEY,
    student_id int,     
    body varchar(1000) NOT NULL,
    CONSTRAINT fk_students
            FOREIGN KEY(student_id)
            REFERENCES students(id) 
);

INSERT into notes (id, student_id, body)
VALUES 
	(1, 1,'Remember'),
	(2, 1, 'to let her into your heart'),
	(3, 2, 'then you can start'),
	(4, 3, 'to make it better'),
	(5, NULL, 'Na'),
	(6, NULL, 'na, na'),
	(7, 4, 'Na, na, na, na'),
	(8, 4,'Na, na, na, na'),
	(9, 5, 'Hey'),
	(10, 5, 'Jude!');


-- INNER JOIN
SELECT * 
	FROM notes 
	INNER JOIN students AS s
		ON notes.student_id = s.id

--LEFT JOIN
SELECT *
	FROM notes
	LEFT JOIN students 
		ON notes.student_id = students.id

-- RIGHT JOIN
SELECT * 
	FROM notes
	RIGHT JOIN students
		ON notes.student_id = students.id
		
-- FULL JOIN 
SELECT *
	FROM notes
	FULL OUTER JOIN students
		ON notes.students_id = students.id
-- throwing an error currently debugging