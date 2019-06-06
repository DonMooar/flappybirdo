#Pillo la imagen del repo
FROM httpd:latest
#Abro puerto 80 del contenedor
EXPOSE 80
RUN apt update && apt install git 
CMD
