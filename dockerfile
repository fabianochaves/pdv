# Use a imagem base do PHP com o Apache
FROM php:7.4-apache

# Diretório de trabalho dentro do contêiner
WORKDIR /var/www/html

# Instalação das extensões do PHP e das bibliotecas necessárias
RUN apt-get update && apt-get install -y \
    libpng-dev \
    zlib1g-dev \
    libxml2-dev \
    libzip-dev \
    libonig-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libjpeg-dev \
    libpng-dev \
    libpq-dev \
    zip \
    curl \
    unzip

# Instalação da extensão PHP para trabalhar com cookies
RUN docker-php-ext-install -j$(nproc) pdo_mysql pdo_pgsql zip gd

# Define a configuração do limite de memória do PHP
ARG PHP_MEMORY_LIMIT=512M
RUN echo "memory_limit = ${PHP_MEMORY_LIMIT}" > /usr/local/etc/php/conf.d/memory-limit.ini
# Copie um arquivo php.ini personalizado para a pasta de configuração do PHP
COPY php.ini /usr/local/etc/php/


# Habilitar o módulo mod_rewrite
RUN a2enmod rewrite

# Habilitar o allow_url_fopen
RUN echo "allow_url_fopen = On" > /usr/local/etc/php/conf.d/allow-url-fopen.ini

# Habilitar a listagem de pastas do Apache
RUN echo "<Directory /var/www/html>" >> /etc/apache2/apache2.conf
RUN echo "    Options +Indexes" >> /etc/apache2/apache2.conf
RUN echo "    AllowOverride All" >> /etc/apache2/apache2.conf
RUN echo "</Directory>" >> /etc/apache2/apache2.conf

# Exponha a porta do Apache
EXPOSE 80
