-- Customer table
CREATE TABLE IF NOT EXISTS customer (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(250) NOT NULL,
    email VARCHAR(40) NOT NULL,
    date_added DATE NOT NULL,
    phone_number BIGINT NOT NULL,
    address VARCHAR(20) NOT NULL
);

-- Book table
CREATE TABLE IF NOT EXISTS book (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    author VARCHAR(40) NOT NULL,
    date_published DATE NOT NULL
);

-- Insert data into customer table
INSERT INTO customer (name, email, date_added, phone_number, address)
VALUES
    ('Peter Parker', 'peter.parker@email.com', '2024-01-25', 1234567890, 'Kisumu'),
    ('Mary Jane Watson', 'mary.jane@email.com', '2024-01-25', 9876543210, 'Kisumu'),
    ('Tony Stark', 'tony.stark@email.com', '2024-01-24', 5551234567, 'Mombasa'),
    ('Natasha Romanoff', 'natasha.romanoff@email.com', '2024-01-24', 1112223333, 'Mombasa'),
    ('Bruce Wayne', 'bruce.wayne@email.com', '2024-01-23', 9998887777, 'Kisumu');

-- Insert data into book table
INSERT INTO book (author, date_published)
VALUES
    ('Marvel Comics', '2017-07-07'),
    ('Marvel Comics', '2005-11-15'),
    ('Marvel Comics', '2010-11-10'),
    ('Frank Miller', '1986-03-10'),
    ('Frank Miller', '1987-02-01');
