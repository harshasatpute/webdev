FROM centos:latest
MAINTAINER harshasatpute8@gmail.com

# Update the base image and refresh repository information
RUN /bin/sh -c yum update -y 

# Install necessary packages
RUN /bin/sh -c yum install -y httpd git

# Clone the repository
RUN /bin/sh -c git clone https://github.com/harshasatpute/webdev.git /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Start Apache server
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# Expose port 80 for incoming connections
EXPOSE 80
