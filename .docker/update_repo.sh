#!/bin/bash

cd /var/www/docker-gollum
STATUS=$(/usr/bin/git status origin/master)

if [[ $STATUS == *Your\ branch\ is\ ahead\ of* ]]; then
  git push -u origin master
fi

exit 0
