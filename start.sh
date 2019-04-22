#!/bin/sh


sed -i "s/MIIO token/$MIIO_TOKEN/" roborock/config.json
sed -i "s/IP Address of the vacuum/$MIIO_IP_ADDR/" roborock/config.json

cd roborock
pm2-runtime start ../pm2.json

