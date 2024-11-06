# commands

## create docker network
docker network ls
docker network create mongo-network

## start mongodb 
docker run -d \
-p 27017:27017 \
-e ME_CONFIG_MONGODB_ADMINUSERNAME="mongoadmin" \
-e ME_CONFIG_MONGODB_ADMINPASSWORD="password" \
--net mongo-network \
--name mongodb \
mongo

## start mongo-express
docker run -d --name mongo-express \
-p 8081:8081 \
-e ME_CONFIG_MONGODB_ADMINUSERNAME="mongoadmin" \
-e ME_CONFIG_MONGODB_ADMINPASSWORD="password" \
-e ME_CONFIG_BASICAUTH_USERNAME="mongoadmin" \
-e ME_CONFIG_BASICAUTH_PASSWORD="password" \
-e ME_CONFIG_MONGODB_SERVER=mongodb \
--net mongo-network \
--name mongo-express \
mongo-express