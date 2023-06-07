FROM centos:latest
MAINTAINER harshasatpute8@gmail.com
RUN  sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN  sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# Update the base image and refresh repository information
RUN yum update -y 

# Install necessary packages
RUN yum install -y httpd git

# Clone the repository
RUN git clone https://github.com/harshasatpute/webdev.git /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Start Apache server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Expose port 80 for incoming connections
EXPOSE 80
