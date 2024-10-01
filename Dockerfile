FROM php:8.1-cli

RUN apt-get update && apt-get install -y supervisor

WORKDIR /var/www/html

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY index.php /var/www/html
COPY pinger.php /var/www/html

EXPOSE 10000

CMD ["/usr/bin/supervisord"]
