#!/bin/bash

echo "starting selenium server"

PATH=/headless/firefox:${PATH}
java -jar selenium-*.jar -role node -hub http://${HUB_PORT_4444_TCP_ADDR}:${HUB_PORT_4444_TCP_PORT}/grid/register -nodeConfig /headless/config.json &

