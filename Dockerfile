FROM nginx:1.23
WORKDIR /usr/local/nginx/htdocs/
ENV PATH=/usr/local/nginx/htdocs:$PATH
COPY . /usr/local/nginx/htdocs/
EXPOSE 8080
CMD ["nginx:1.23"]
