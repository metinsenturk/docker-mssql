#/usr/bin/sh

# -l: put login timeout so that process won't exit
# -P: load from env
# -i: load adventureworks database
# & : perhaps the most important, put it in the background
echo "loading database"
/opt/mssql-tools/bin/sqlcmd -S localhost -l 15  -U sa -P ${SA_PASSWORD}  -d master -i ./scripts/adventureworks.sql & 
/opt/mssql-tools/bin/sqlcmd -S localhost -l 30  -U sa -P ${SA_PASSWORD}  -d master -i ./scripts/adventureworks-dw.sql & 

echo "startup sql server"
/opt/mssql/bin/sqlservr