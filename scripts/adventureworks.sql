USE [master]
-- needed otherwise we run into an error
DROP DATABASE IF EXISTS AdventureWorks2019
CREATE DATABASE AdventureWorks2019
-- usual load script
ALTER DATABASE [AdventureWorks2019] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [AdventureWorks2019] 
FROM  DISK = N'/var/opt/mssql/backups/AdventureWorks2019.bak' WITH  FILE = 1,  
MOVE N'AdventureWorks2017' TO N'/var/opt/mssql/data/AdventureWorks2019.mdf',  
MOVE N'AdventureWorks2017_log' TO N'/var/opt/mssql/data/AdventureWorks2019_log.ldf',  
NOUNLOAD,  REPLACE,  STATS = 5
ALTER DATABASE [AdventureWorks2019] SET MULTI_USER
