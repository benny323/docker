FROM node:23-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

#RUN mkdir -p /home/node-app
#COPY ./app /home/node-app
WORKDIR /home/node-app
COPY ./app .

#CMD ["node","/home/node-app/server.js"]
CMD ["node","server.js"]
