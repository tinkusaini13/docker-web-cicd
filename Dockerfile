FROM nginx
COPY website/*  /usr/share/nginx/html
EXPOSE 80
