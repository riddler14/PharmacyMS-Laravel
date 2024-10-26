# Use a PHP image as the base
FROM php:8.1-fpm-alpine

# Set the working directory
WORKDIR /var/www/html

# Copy composer.json and composer.lock files
COPY composer.json composer.lock ./

# Install dependencies
RUN composer install --no-interaction --no-ansi --no-progress

# Copy the rest of the application code
COPY . .

# Expose the port PHP-FPM listens on
EXPOSE 9000

# Start the PHP-FPM process
CMD ["php-fpm"]