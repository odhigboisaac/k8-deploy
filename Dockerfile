FROM ubuntu:latest
RUN apt install apache2 -y \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/simply-amazed.zip /var/www/html
WORKDIR /var/www/html
RUN unzip simply-amazed.zip
RUN cp -rvf simply-amazed/* .
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80 22