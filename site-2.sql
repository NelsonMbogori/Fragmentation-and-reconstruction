USE tempdb
GO

-- Customer table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'customer')
BEGIN
    CREATE TABLE customer (
        id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
        name VARCHAR(250) NOT NULL,
        email VARCHAR(40) NOT NULL,
        date_added DATE NOT NULL,
        phone_number BIGINT NOT NULL,
        address VARCHAR(20) NOT NULL
    );
END

-- Book table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'book')
BEGIN
    CREATE TABLE book (
        id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
        isbn VARCHAR(250) UNIQUE NOT NULL,
        title VARCHAR(40) NOT NULL
    );
END

-- Insert data into customer table
INSERT INTO customer (name, email, date_added, phone_number, address)
VALUES
    ('John Doe', 'john.doe@email.com', '2024-01-25', 1234567890, 'Nairobi'),
    ('Alice Smith', 'alice.smith@email.com', '2024-01-25', 9876543210, 'Nairobi'),
    ('Bob Johnson', 'bob.johnson@email.com', '2024-01-24', 5551234567, 'Nairobi');

-- Insert data into book table
INSERT INTO book (isbn, title)
VALUES
    ('978-0-1234-5678-9', 'The Catcher in the Rye'),
    ('978-0-5432-1098-7', 'To Kill a Mockingbird'),
    ('978-0-9876-5432-1', '1984');