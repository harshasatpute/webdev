FROM centos:latest
MAINTAINER harshasatpute8@gmail.com
RUN yum install httpd && yum install git -y
RUN git clone https://github.com/harshasatpute/webdev.git /var/www/html
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
