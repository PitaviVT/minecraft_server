#!/bin/bash

# Iniciar server automáticamente si no está en ejecución
if ! screen -list | grep -q "mc"; then
    bash /workspaces/minecraft_server/start_server.sh
fi