#!/bin/bash

cd /var/www/brat/brat-v1.3_Crunchy_Frog && /var/www/brat/brat-v1.3_Crunchy_Frog/install.sh <<EOD 
$BRAT_USERNAME 
$BRAT_PASSWORD 
$BRAT_EMAIL
EOD
echo "import json; USER_PASSWORD.update(json.load(open('cfg/users.json', 'r'))" >> /var/www/brat/brat-v1.3_Crunchy_Frog/config.py

chown -R www-data:www-data /bratdata

echo "Install complete. You can log in as: $BRAT_USERNAME"

exit 0
