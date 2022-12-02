FROM alpine:3.15

LABEL artist=yar_alpine
LABEL version=0.1

RUN apk update && apk upgrade && \
	apk add --no-cache lighttpd php php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php-phar php7-simplexml php7-fpm wget mysql-client

COPY ./conf/wp-config-create.sh ./wp-config-create.sh
COPY ./conf/www.conf /etc/php7/php-fpm.d/
RUN chmod 777 ./wp-config-create.sh && chmod 777 /etc/php7/php-fpm.d/www.conf 
#COPY ./my_cv /var/www/cv.com

EXPOSE 80

CMD sh ./wp-config-create.sh

#ENTRYPOINT tail -f
