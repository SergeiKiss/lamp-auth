FROM nickistre/ubuntu-lamp

RUN <<EOF
rm -rf /var/www/html
EOF

WORKDIR /var/www/html

COPY ./app /var/www/html

EXPOSE 80
