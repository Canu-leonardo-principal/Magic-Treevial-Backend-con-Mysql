FROM httpd:bullseye

RUN apt update 
RUN apt upgrade

COPY php.apache.conf /usr/local/apache2/conf/php.apache.conf
RUN echo "Include /usr/local/apache2/conf/php.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf