#!/usr/bin/env bash
set -e

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
