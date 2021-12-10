# Microsoft SQL Server with Sample Databases on Docker

This repo installs Microsoft SQL Server on any host where docker can run. After the SQL server container is up, it attaches AdventureWorks OLTP database and the DW as a sample database.

You can try this repo contents in any platform. Downloads suggested in this repository are cross-platform and can be used anywhere.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio)

## How to Try this Locally on Your Computer?

1. Install Docker on your computer.
2. Download this repository with `git clone https://github.com/metinsenturk/docker-mssql`.
3. Open a terminal to the repository folder.
4. Run command: `docker-compose -f "docker-compose.yml" up -d --build`.
5. At this point, your database should be up after image downlods.
6. Finally, you can view the database with [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15#download-azure-data-studio). Download and install any version of Azure Data Studio on your computer.
7. Done!

## Adding Connection in Azure Data Studio

Use below connection information to login.

``` yml
Server: localhost
Authentication Type: SQL Login
User name: sa
Password: ABC123def
```

## Author

By @metinsenturk.