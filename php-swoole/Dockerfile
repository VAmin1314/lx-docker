FROM php:7.2-alpine

USER ${USER}:${GROUP}

RUN set -xe \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk add --no-cache --update libmemcached-libs zlib curl-dev tzdata libpng-dev freetype-dev libjpeg-turbo-dev \
    && apk add --no-cache --update --virtual .phpize-deps $PHPIZE_DEPS \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install pdo_mysql mysqli gd \
    && pecl install yar-2.0.5 \
    && pecl install redis-5.0.2 \
    && pecl install swoole-4.4.9 \
    && docker-php-ext-enable redis swoole yar \
    && rm -rf /usr/share/php \
    && rm -rf /tmp/* \
    && apk del .phpize-deps tzdata

# COPY config/opcache.ini $PHP_INI_DIR/conf.d/
