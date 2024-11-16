#Usar la imagen base php:7.4-apache

FROM php:7.4-apache

#Actualizar los repositorios e instalar nano y git 

RUN apt update && \
    apt install -y nano git

#Configurar el directorio de trabajo en /var/www/html

WORKDIR /var/www/html


#Añade el archivo Index.html con el mensaje solicitado 

RUN echo "Hola soy Carlos Robles" > Index.html

#Añade el archivo info.php con el código PHP solicitado

RUN echo "<?php phpinfo(); ?>" > info.php

#Exponemos el puerto 80, donde Apache está escuchando

EXPOSE 80 

