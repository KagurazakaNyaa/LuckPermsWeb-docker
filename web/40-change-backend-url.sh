#!/bin/sh

set -e

sed -i "s#https://usercontent.luckperms.net#${BYTEBIN_ACCESS_URL}#g" /var/www/html/js/*.js

exit 0