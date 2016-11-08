FROM php:7.0-apache
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_ajp
RUN a2enmod rewrite
RUN a2enmod deflate
RUN a2enmod headers
RUN a2enmod proxy_balancer
RUN a2enmod proxy_connect
RUN a2enmod ssl
RUN a2enmod cache

RUN apt-get update

# Install Passenger + Apache module
RUN apt-get install -y libapache2-mod-passenger && ruby

# install passenger module
RUN a2enmod passenger