FROM node:8.15.0-alpine as build
RUN mkdir /src
WORKDIR /src

#copy only the deps file and pull dependancies once!
COPY ./src/frame-app/package.json /src/frame-app/package.json
RUN cd frame-app && ls -l && npm install

COPY ./src/ /src/
RUN cd /src/frame-app/ && npm run build --mode staging

RUN ls -l /src/frame-app/build/

FROM nginx:1.15.8-alpine

#config
copy ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir /app
#content from build
COPY --from=build /src/frame-app/build/ /usr/share/nginx/html/
RUN ls -l /usr/share/nginx/html/

#copy ./*.html /usr/share/nginx/html/
#copy ./*.js /usr/share/nginx/html/