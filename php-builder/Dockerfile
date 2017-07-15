FROM ubuntu:14.04

# util
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C && apt-key update && \
    apt-get update && apt-get install -y curl wget unzip git libfontconfig software-properties-common

# node
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - && apt-get install -y nodejs

# php
RUN add-apt-repository -y ppa:ondrej/php && apt-get update && \
    apt-get install -y libmcrypt-dev \
    php7.1 php7.1-bcmath php7.1-mbstring php7.1-mcrypt php7.1-curl php7.1-dom php7.1-zip \
    php7.1-xdebug php7.1-redis php7.1-pgsql php7.1-mysql

# composer
RUN mkdir /app && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer

# clean
RUN apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

WORKDIR /app
