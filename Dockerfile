FROM php:8.0-fpm-alpine

WORKDIR /

COPY composer.json composer.lock ./

RUN composer install --no-interaction --no-ansi --no-progress

COPY . .

EXPOSE 9000

CMD ["php-fpm"]