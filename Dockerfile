FROM nginx
Add ./nginx/* /usr/local/mginx/htdocs
EXPOSE 8080
CMD ["nginx"]
WORKDIR /usr/local/nginx/htdocs/
