FROM centos
RUN yum install httpd -y
COPY website/* /var/www/html/
EXPOSE 80
