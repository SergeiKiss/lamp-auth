FROM nickistre/ubuntu-lamp

RUN <<EOF
rm -rf /var/www/html
mkdir /var/www/html
echo 'ServerName 127.0.0.1' >> /etc/apache2/apache2.conf
service apache2 start
EOF

WORKDIR /var/www/html

COPY ./app /var/www/html

EXPOSE 80