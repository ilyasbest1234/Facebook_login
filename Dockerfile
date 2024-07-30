# Utiliser l'image PHP officielle avec Apache
FROM php:7.4-apache

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli

# Copier les fichiers de l'application dans le répertoire par défaut d'Apache
COPY . /var/www/html/

# Donner les permissions nécessaires
RUN chown -R www-data:www-data /var/www/html

# Exposer le port 80
EXPOSE 80
