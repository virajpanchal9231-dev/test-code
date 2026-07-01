FROM ubuntu:22.04
RUN apt-get update && apt-get install -y apache2 && service restart apache2
WORKDIR  /var/www/html
COPY index.html .
CMD ['apachectl', '-D' 'FOREGROUND']
