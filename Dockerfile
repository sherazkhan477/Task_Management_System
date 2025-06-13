FROM php:8.2-apache 
COPY . /var/www/html/ 
RUN a2enmod rewrite 
RUN echo "<Directory /var/www/html/>" 
"    AllowOverride All" 
"    Require all granted" 
"</Directory>" 
RUN a2enconf custom-permissions 
