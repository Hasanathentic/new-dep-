FROM nginx
Add ./nodejs/* /usr/local/mginx/htdocs
EXPOSE 3000
WORKDIR /usr/local/nginx/htdocs/
