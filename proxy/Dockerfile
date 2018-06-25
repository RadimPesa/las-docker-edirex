FROM httpd:2.4


RUN ln -sf /proc/self/fd/1 /usr/local/apache2/logs/access.log && \
    ln -sf /proc/self/fd/1 /usr/local/apache2/logs/error.log

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ./ssl/apache.key /usr/local/apache2/conf/server.key
COPY ./ssl/apache.crt /usr/local/apache2/conf/server.crt
COPY ./index.html /usr/local/apache2/htdocs/index.html
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

ENV TZ=Europe/Prague

CMD [ "/start.sh" ]
