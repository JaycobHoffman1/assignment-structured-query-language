CREATE DATABASE fitness_center_db;

USE fitness_center_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

-- Task 1: SQL Data Insertion

INSERT INTO Members (id, name, age)
VALUES
(100, 'John Doe', 30),
(200, 'Jane Doe', 35),
(300, 'John Smith', 40);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES
(1, 100, '2024-08-01', '12:00 PM', 'Weightlifting'),
(2, 200, '2024-08-02', '1:00 PM', 'Aerobics'),
(3, 300, '2024-08-03', '1:30 PM', 'Swimming');

-- Task 2: SQL Data Update

UPDATE WorkoutSessions
SET session_time = '6:00 PM'
WHERE member_id = 200;

-- Task 3: SQL Data Deletion

DELETE FROM WorkoutSessions
WHERE member_id = 200;

DELETE FROM Members
WHERE id = 200;