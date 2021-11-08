-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    height float,
    city VARCHAR(40),
    favorite_color VARCHAR(15)
);

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Trew', 1000, 2000, 'Oakland', 'Tea'), 
('Marcus', 3000, 1500, 'Vegas', 'Baby'), 
('Andrew', 1000, 1750, 'Utah', 'Baby'), 
('Cameron', 2500, 5000, 'Headquarters', 'Cigars'), 
('Logan', 1000, 9000, 'Lafayette', 'Keyboard');

-- Select all the people in the person table by height from tallest to shortest.
SELECT name 
FROM person 
ORDER BY height DESC;

-- Select all the people in the person table by height from shortest to tallest.
SELECT name 
FROM person 
ORDER BY height 
ASC;

-- Select all the people in the person table by age from oldest to youngest.
SELECT name 
FROM person 
ORDER BY age 
DESC;

-- Select all the people in the person table older than age 20.
SELECT name 
FROM person 
WHERE age > 20;

-- Select all the people in the person table that are exactly 18.
SELECT name 
FROM person 
WHERE age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT name 
FROM person 
WHERE age < 20 OR age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT name 
FROM person 
WHERE age != 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT name 
FROM person 
WHERE favorite_color != 'red';

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT name 
FROM person 
WHERE favorite_color != 'red' 
AND favorite_color != 'blue';

-- Select all the people in the person table where their favorite color is orange or green.
SELECT name 
FROM person 
WHERE favorite_color = 'orange'
OR favorite_color = 'green';

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT name 
FROM person 
WHERE favorite_color 
IN ('orange','green','blue');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT name 
FROM person 
WHERE favorite_color 
IN ('yellow','purp');
