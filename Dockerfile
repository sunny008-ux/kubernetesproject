FROM centos:latest
MAINTAINER sunnytyagi1301@gmail.com
RUN yum install -y httpd \
 zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/modular-business.zip /var/www/html
WORKDIR /var/www/html
RUN unzip modular-business.zip
RUN cp -rvf modular-business/*
RUN rm -rf modular-business modular-business.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 
