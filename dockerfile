FROM ubuntu:22.04
RUN apt-get update && apt-get install -y apache2
WORKDIR  /var/www/html/var/www/html/index.html
COPY index.html .
CMD ['apachectl', '-D' 'FOREGROUND']
