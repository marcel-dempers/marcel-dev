FROM nginx:1.15.8-alpine

#config
copy ./nginx.conf /etc/nginx/nginx.conf

#content
copy ./index.html /usr/share/nginx/html/index.html