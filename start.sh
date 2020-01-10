# docker exec -it app /bin/sh

# docker rmi $(docker images -q) && docker-compose down -v && docker build . && docker-compose -f docker-compose.yml up -d

#docker-compose rm && docker-compose build && docker-compose up


docker-compose -f docker-compose.yml up -d

docker exec -it app /bin/sh