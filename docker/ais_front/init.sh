#!/bin/sh
# Starting script for the ais front web site

echo -n "Waiting for server $POSTGRES_HOST to start."
until netcat -z $POSTGRES_HOST 5432 > /dev/null 2>&1; do
    echo -n '.'
    sleep 1
done

echo
echo "The server $POSTGRES_HOST is online"

cd /app

echo ''

mix do deps.get, ecto.setup

echo

cd /app/assets

npm install \
    && node node_modules/webpack/bin/webpack.js --mode development

echo
echo 'Launching the website now...'

cd /app

mix phx.server