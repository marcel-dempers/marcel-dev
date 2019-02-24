# FROM node:8.15.0-alpine
# RUN mkdir /src
# WORKDIR /src

# #copy only the deps file and pull dependancies once!
# COPY ./src/frame-app/package.json /src/frame-app/package.json
# RUN cd frame-app && ls -l && npm install

# COPY ./src/ /src/
# RUN ls -l
# RUN npm run build

FROM nginx:1.15.8-alpine

#config
copy ./nginx.conf /etc/nginx/nginx.conf

#content
copy ./*.html /usr/share/nginx/html/
copy ./*.js /usr/share/nginx/html/