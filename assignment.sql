-- Drop all tables in 'ph' database
USE ph;

-- Disable foreign key checks to allow dropping tables in any order
SET FOREIGN_KEY_CHECKS = 0;

-- Get all table names and generate DROP TABLE statements
SELECT CONCAT('DROP TABLE IF EXISTS `', TABLE_NAME, '`;')
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'ph';

-- Re-enable foreign key checks after dropping tables
SET FOREIGN_KEY_CHECKS = 1;