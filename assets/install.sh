#!/usr/bin/env bash
set -e

PHP_USER=php

# Add & config PHP user
echo "$PHP_USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
useradd --create-home --user-group ${PHP_USER}

# Install globally composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
