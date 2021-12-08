USE [master]
-- needed otherwise we run into an error
DROP DATABASE IF EXISTS AdventureWorksDW2019
CREATE DATABASE AdventureWorksDW2019
-- usual load script
ALTER DATABASE [AdventureWorksDW2019] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
RESTORE DATABASE [AdventureWorksDW2019] 
FROM  DISK = N'/var/opt/mssql/backups/AdventureWorksDW2019.bak' WITH  FILE = 1,  
MOVE N'AdventureWorksDW2017' TO N'/var/opt/mssql/data/AdventureWorksDW2019.mdf',  
MOVE N'AdventureWorksDW2017_log' TO N'/var/opt/mssql/data/AdventureWorksDW2019_log.ldf',  
NOUNLOAD,  REPLACE,  STATS = 5
ALTER DATABASE [AdventureWorksDW2019] SET MULTI_USER
