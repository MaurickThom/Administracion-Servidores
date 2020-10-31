#

## Descarga del repositorio con el proyecto de Node.js:

`git clone https://github.com/edisoncast/linux-platzi`

## Instalación de Node.js:

`sudo apt install nodejs npm`

## Descarga e instalación de la versión 10 de Node.js:

```sh
  # Posicionados en el home, descargar Node 10
  curl -sL https://deb.nodesource.com/setup_10.x -o node_setup.sh

  # Instalar Node 10
  sudo bash node_setup.sh

  # Instalar gcc, g++ y make
  sudo apt-get install gcc g++ make

  # Finalizar el proceso de instalación de la versión 10 de Node
  sudo apt-get install -y nodejs
```

## Creación de un usuario para manejar los procesos de Node.js:

`sudo adduser nodejs`

## En la carpeta de linux-platzi (repo que se descargó), ejecutar el archivo server.js

`node server.js`

## Creación del script /lib/systemd/system/platzi@.service para que el servicio de Node.js arranque con el sistema operativo:

`sudo vim /lib/systemd/system/platzi@.service`. se crea esto

```sh
  [Unit]
  Description=Balanceo de carga para Platzi
  Documentation=https://github.com/edisoncast/linux-platzi
  After=network.target

  [Service]
  Environment=PORT=%i
  Type=simple
  User=nodejs
  WorkingDirectory=/home/nodejs/linux-platzi
  ExecStart=/usr/bin/node /home/nodejs/linux-platzi/server.js
  Restart-on=failure

  [Install]
  WantedBy=multi-user.target
```
