CREATE DATABASE projectdb;

USE projectdb;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100)
);

INSERT INTO users (name, email)
VALUES ('VaibhavGoswami', 'vaibhavgoswami.101@gmail.com');
