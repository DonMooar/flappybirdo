#Pillo la imagen del repo
FROM httpd:latest
#Creo carpeta donde se alojará el código
#WORKDIR /game
#Abro puerto 80 del contenedor
EXPOSE 8080
#copiamos la config deseada para el apache
WORKDIR /usr/local/apache2
COPY ./httpd.conf /usr/local/apache2/conf/
#copiamos la app
WORKDIR /usr/local/apache2/htdocs
COPY ./flappybirdo /usr/local/apache2/htdocs/
