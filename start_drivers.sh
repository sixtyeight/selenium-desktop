#!/bin/bash

echo "starting selenium server"

PATH=/headless/firefox:${PATH}
java -jar selenium-*.jar -role node -hub http://selenium-hub.selenium-grid.svc:4444/grid/register -nodeConfig /headless/config.json &

