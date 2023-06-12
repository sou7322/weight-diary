FROM node:18.16.0-alpine

WORKDIR /data

RUN npm install -g json-server

CMD ["json-server","--watch","db.json","--port","3000","--host","0.0.0.0"]

