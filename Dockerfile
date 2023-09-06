FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y zip unzip
RUN apt install apache2 -y 
CMD systemctl start apache2 && systemctl enable apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/simply-amazed.zip /var/www/html
WORKDIR /var/www/html
RUN unzip simply-amazed.zip
CMD cp -rvf simply-amazed/* .
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80 
