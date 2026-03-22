-- Create a table named `users` with the following columns:
-- id: integer, not null, auto increment, primary key
-- email: string (255 characters), not null, unique
-- name: string (255 characters)
-- country: enumeration ('US', 'CO', 'TN'), not null, default 'US'

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
