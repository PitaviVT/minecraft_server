# minecraft_server
Pues eso

# descargar java
sudo apt update && sudo apt install -y openjdk-21-jre-headless screen wget git

# descargar version de minecraft
https://mcversions.net

wget -O server.jar https://piston-data.mojang.com/v1/objects/95495a7f485eedd84ce928cef5e223b757d2f764/server.jar

# iniciar el servidor 
sh start_server

# poner eula a true

echo "eula=true" > eula.txt

# cambiar de pantalla sin cerrarlo
Ctrl + A + D -> Pasa de pantalla

# ver ventana servidor

screen -r mc

# exponer el puerto
gh codespace ports visibility 25565:public -c $(gh codespace list --json name -q '.[0].name')

# comprobar host

hostname -I
