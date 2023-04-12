# README


For start progect  
docker-compose run --rm --service-ports web bash  
rails s -b 0.0.0.0  

For migration  
rails db:create  
rails db:migrate  


For SQL  
docker exec -it id_postgres /bin/bash  
psql -U postgres -d postgres  
\dt; - all tables  
drop table name_table;  
select * from name_tables;  
