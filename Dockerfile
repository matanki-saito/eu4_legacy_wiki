FROM php:7.4.26-apache

COPY ./pukiwiki/ /var/www/html/

EXPOSE 80
