#!/bin/bash

# Intentar cerrar la sesión de screen llamada 'mc'
if screen -list | grep -q "mc"; then
    echo "Cerrando sesión de screen 'mc'..."
    screen -S mc -X quit
else
    echo "No se encontró la sesión de screen 'mc'."
fi

# Buscar y matar procesos de Java relacionados con Minecraft
JAVA_PIDS=$(ps aux | grep java | grep -v grep | awk '{print $2}')
if [ -n "$JAVA_PIDS" ]; then
    echo "Matando procesos Java relacionados con Minecraft..."
    kill $JAVA_PIDS
else
    echo "No se encontraron procesos Java de Minecraft."
fi

echo "Servidor detenido."