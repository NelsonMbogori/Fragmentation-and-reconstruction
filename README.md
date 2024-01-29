spinning up the containers

```sudo docker compose up --build -d```



runiing the data scripts
mssql
```sudo docker cp /home/nelson/UON/ddbms/site-2.sql <cont-id>:/home/```

 ```docker exec -it <cont-id> /opt/mssql-tools/bin/sqlcmd -S localhost -d tempdb -U sa -P Ver1C0mp1exPWd -i /home/site-2.sql```

mysql

```sudo docker exec -i <cont-id> mysql -u site3 -psite3 site3 < site-3.sql```

postgres
```sudo docker exec -i <cont-id> psql -U postgres -d main_site < main-data.psql```



