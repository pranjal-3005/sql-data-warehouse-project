/*
===========================================================
Create Databse and Schemas
==========================================================
Script purpose:
  This script create a new datebase named 'DataWarehouse ' after checking if it already exist.
  If the datebase exists, it is dropped and recreated. Additionally, the script set up three schemas 
  within the datebase : 'bronze','sliver', and 'gold'.

WARNING:
 Running this script will drop the entire 'Datewarehouse' database if it exists.
 All data in the datebase will be permanently deleted. Proceed with caution
 and ensure you have backups before running this script.
*/

USE MASTER
GO

-- Drop and recreate the 'DataWarehouse' datebase 
IF EXISTS (SELECT 1 FROM SYS.DATEBASE WHERE NAME = 'DATAWAREHOUSE1')
BEGIN
  ALTER DATABASE DATAWAREHOUSE1 SET SINGLE USER WITH ROLLBACK IMMEDIATE
  DROP DATABASE DATAWAREHOSE1
END
GO

--Create the 'Datawarehouse1' database 
CREATE DATABASE DATAWAREHOUSE1
GO

  
USE DATAWAREHOUSE1

-- Create Schemas 
CREATE SCHEMA bronze
GO

  
CREATE SCHEMA silver
GO

  
CREATE SCHEMA gold 
GO
