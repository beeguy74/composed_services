FROM alpine:latest

LABEL artist=yar_nginx
LABEL version=0.1

RUN apk update && apk upgrade && apk add --no-cache  nginx curl

COPY ./conf/nginx.conf /etc/nginx/http.d/nginx.conf
COPY ./my_cv /var/www/cv.com



EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

