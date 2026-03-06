USE master;

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create schemas
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
