# -----------------------------
# Stage 1: Composer dependencies
# -----------------------------
FROM composer:2 AS vendor

WORKDIR /app
COPY composer.json composer.lock ./
RUN composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction \
    --no-scripts

# -----------------------------
# Stage 2: Frontend build
# -----------------------------
FROM node:20-alpine AS frontend

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

# -----------------------------
# Stage 3: Runtime (PHP-FPM)
# -----------------------------
FROM php:8.2-fpm-alpine AS app

# System deps
RUN apk add --no-cache \
    bash \
    curl \
    libpng-dev \
    libjpeg-turbo-dev \
    libwebp-dev \
    libzip-dev \
    oniguruma-dev \
    zip \
    unzip

# PHP extensions (RUNTIME REQUIRED)
RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    mbstring \
    zip \
    bcmath \
    exif

WORKDIR /var/www

# Copy application
COPY . .

# Copy vendor & frontend build
COPY --from=vendor /app/vendor ./vendor
COPY --from=frontend /app/public/build ./public/build

# Permissions
RUN chown -R www-data:www-data storage bootstrap/cache

EXPOSE 9000
CMD ["php-fpm"]
