FROM httpd:bullseye

RUN apt -y update 
RUN apt -y upgrade

COPY php.apache.conf /usr/local/apache2/conf/php.apache.conf
RUN echo "Include /usr/local/apache2/conf/php.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf