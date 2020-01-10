## Delete everything for rebuild
#   docker-compose down -v && docker-compose rm 
# or
#   docker rmi $(docker images -q) && docker-compose down -v && docker build . && docker-compose -f docker-compose.yml up -d


docker-compose build

docker-compose -f docker-compose.yml up -d

docker exec -it app /bin/bash