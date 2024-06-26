DROP DATABASE IF EXISTS bankApp;
CREATE DATABASE bankApp
CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;
USE bankApp;

CREATE TABLE USERS (
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    dni VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE ACCOUNTS (
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    balance DOUBLE NOT NULL,
	account_number VARCHAR(10) UNIQUE NOT NULL,
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES USERS(id)
);

CREATE TABLE TRANSACTIONS (
	id INT AUTO_INCREMENT PRIMARY KEY,
    origin_account VARCHAR(10) NOT NULL,
    target_account VARCHAR(10) NOT NULL,
    amount DOUBLE NOT NULL,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);