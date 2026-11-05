-- 1. Create the database and connect to it
CREATE DATABASE library;
\c library

-- 2. Create the books table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL,
    price NUMERIC(8, 2) NOT NULL
);

-- 3. Insert 8 books
INSERT INTO books (title, author, year, price) VALUES
    ('Clean Code', 'Robert C. Martin', 2008, 850.00),
    ('The Pragmatic Programmer', 'Andrew Hunt', 1999, 950.00),
    ('Python Crash Course', 'Eric Matthes', 2015, 700.00),
    ('Atomic Habits', 'James Clear', 2018, 600.00),
    ('The Alchemist', 'Paulo Coelho', 1988, 400.00),
    ('To Kill a Mockingbird', 'Harper Lee', 1960, 350.00),
    ('Nineteen Eighty-Four', 'George Orwell', 1949, 300.00),
    ('Pride and Prejudice', 'Jane Austen', 1813, 250.00);

-- 4a. Books with price above 500
SELECT * FROM books WHERE price > 500;

-- 4b. All books sorted by price, highest first
SELECT * FROM books ORDER BY price DESC;

-- 4c. How many books there are
SELECT COUNT(*) FROM books;

-- 5. Update the price of one book
UPDATE books SET price = 900.00 WHERE id = 1;

-- 6. Check the update
SELECT * FROM books WHERE id = 1;
