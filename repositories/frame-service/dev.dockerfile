FROM node:8.15.0-alpine as build
RUN mkdir /src
WORKDIR /src

#copy only the deps file and pull dependancies once!
COPY ./src/frame-app/package.json /src/frame-app/package.json
RUN cd frame-app && ls -l && npm install

EXPOSE 5000
COPY ./src/ /src/

CMD cd /src/frame-app/ && npm start
