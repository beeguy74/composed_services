FROM alpine:3.15

LABEL artist=yar_maria
LABEL version=0.1

COPY ./conf/* ./
RUN apk update && apk upgrade && apk add --no-cache  mariadb mariadb-client vim && \
	mysql_install_db --user=mysql --datadir=/var/db --auth-root-authentication-method=normal

RUN chown -R mysql:mysql ./init.sql && mkdir /run/mysqld && chown -R mysql:mysql /run/mysqld

#COPY ./my_cv /var/www/cv.com

# EXPOSE 3306
#ENTRYPOINT tail -f

CMD sh ./create_db.sh

