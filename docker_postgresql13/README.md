# build
docker build --tag docker-postgres13 .

# run
docker run --name postgres13-container -d --restart unless-stopped \
-p 5432:5432 \
-v ${PWD}/data:/var/lib/postgresql/data docker-postgres13

# access
docker exec -it postgres13-container bash

psql -U postgres

# table select
# SELECT * FROM pg_catalog.pg_tables;
select * from account_test;

docker stop postgres13-container && docker rm postgres13-container && docker rmi docker-postgres13

export DATABASE_URL=“postgresql://[아이디]:[비번]@localhost:5432/postgres13”
export DATABASE_URL='postgresql://postgres:123456@localhost:5432/postgres'

docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

docker rmi $(docker images -q) 
