ARG PHP_VERSION=8.2

FROM php:${PHP_VERSION}

# Install git and zip for Composer
# Install redis for testing
RUN apt-get update \
 && apt-get install -y \
    git \
    redis \
    unzip \
    zip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Start cluster
COPY start-cluster.sh /
RUN apt-get update \
 && apt-get install -y \
    redis \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install install-php-extensions
RUN curl -L https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions -o /tmp/install-php-extensions \
 && mv /tmp/install-php-extensions /usr/local/bin/install-php-extensions \
 && chmod uga+x /usr/local/bin/install-php-extensions \
 && sync \
 && install-php-extensions \
    pcntl

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENTRYPOINT /start-cluster.sh
