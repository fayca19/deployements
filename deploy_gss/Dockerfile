FROM nginx:1.17-alpine
COPY ./dist /usr/share/nginx/html
COPY ./nginx_config/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx_config/default.conf /etc/nginx/conf.d/default.conf