#!/bin/bash
cd /workspaces/minecraft_server

# RAM moderada para Codespaces
screen -dmS mc java -Xms8G -Xmx16G -jar ./files/server.jar nogui
