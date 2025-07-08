-- Database setup script for newDemo application
-- Run this script in MySQL to create the required database

-- Create the database
CREATE DATABASE IF NOT EXISTS product;

-- Use the database
USE product;

-- The table will be created automatically by Hibernate when the application starts
-- due to the hibernate.hbm2ddl.auto=update setting in persistence.xml

-- You can verify the table creation by running:
-- SHOW TABLES;
-- DESCRIBE items;

-- To test the application, make sure:
-- 1. MySQL server is running on localhost:3306
-- 2. User 'root' with password 'root' has access to the database
-- 3. The 'product' database exists

-- If you need to change the database credentials, update the persistence.xml file 