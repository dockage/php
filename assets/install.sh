#!/usr/bin/env bash
set -e

PHP_USER=php

# Add & config PHP user
echo "$PHP_USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
useradd --create-home -s /bin/bash --user-group ${PHP_USER}
su --login ${PHP_USER} -c "echo \"export PATH=\$PATH:/home/php/.composer/vendor/bin\" >> /home/${PHP_USER}/.profile"

# Install globally composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
