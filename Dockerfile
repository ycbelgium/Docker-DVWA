FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get -y install apache2 mysql-server php5 php5-mysql php-pear php5-gd

ADD ./DVWA /var/www/html/
RUN chown -R www-data: /var/www
RUN rm /var/www/html/index.html

ADD run.sh /usr/local/sbin/run.sh
CMD ["/usr/local/sbin/run.sh"]

