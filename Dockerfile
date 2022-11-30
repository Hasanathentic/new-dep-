FROM nginx
WORKDIR /usr/local/nginx/htdocs/
COPY . /usr/local/nginx/htdocs/
EXPOSE 8080
cmd ["nginx"]
