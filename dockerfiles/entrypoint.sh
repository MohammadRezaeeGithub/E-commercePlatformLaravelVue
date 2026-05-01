#!/bin/sh

if [ ! -d "vendor" ]; then
  echo "Installing dependencies..."
  composer install
fi

# npm
if [ ! -d "node_modules" ]; then
  echo "Installing npm dependencies..."
  npm install
fi

php-fpm