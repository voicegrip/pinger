FROM php:8.1-cli

WORKDIR /var/www/html
COPY pinger.php /var/www/html
EXPOSE 10000

CMD [ "php", "/var/www/html/pinger.php" ]
