   * `docker-compose up -d` will give your a test postgres instance ,and you can also use the pgadmin4 to access the postgresql
   *  http://localhost:5050  pgadmin4 ui
   *  username: a@a.com (I want to keep it short), password : a . you can change this by change the value of PGADMIN_DEFAULT_EMAIL and PGADMIN_DEFAULT_PASSWORD
   *  in the pgadmin ui , create server to connect the postgres. host name is the container name of db service `pg_container`
   *  if your chagned the environmental variable , your need to delete the data in admin volumes   
    1. `docker-compose down`    
    2. `docker rm -f $(docker ps -a -q)`   
    3. `docker volume rm $(docker volume ls -q)` (or just find the admin volume if you want to keep the other volume's data)   
    4. `docker-compose up -d` to restart the service    
