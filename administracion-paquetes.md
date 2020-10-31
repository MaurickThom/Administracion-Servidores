#

>Cada distribucion de linux maneja su software de maneras diferentes

## Red Hat / CentOS / Fedora

- su gestor de paquetes es `.rpm` (redhat package manager), la base de datos de este gestor está
  localizada en `/var/lib/rpm`
- rpm -qa : lista todos los rpms instalados en la maquina
- rpm -i paquete.rpm : realiza la instalacion del paquete
- rpm -e paquete.rpm : remueve un paquete del sistema
- repositorios yum: permite instalar un paquete sin tener que conocer el dominio, el ubuntu hay uno parecido snap. Es parecido a npm
  - yum install paquete

## Debian / Ubuntu

- .deb : debian packege management
- la base de datos de este gestor esta localizada en `/var/lib/dpkg`
- dpkg -l : lista todos los .deb instalados
- dpkg -i paquete.deb : instala
- dpkg -r paquete.deb : elimina
- apt : sudo apt install paquete, otra forma de instalar
- dpkg-reconfigure paquete: volver a ejecutar el asistente de configuracion si está disponible 

> apt list --upgradable : lista los paquetes que estan disponibles para actualizar

## Nagios

Es un sistema de monotorizacion de redes
No todo el software que necesitamos se encuentra en los repositorios. Debido a esto, algunas
veces debemos descargar el software, realizar un proceso de descompresión y desempaquetado para 
finalmente instalar la herramienta.

Instalación de algunas herramientas para manejar una base de datos MySQL

```sh
  > sudo apt install build-essential libgd-dev openssl libssl-dev unzip apache2 php gcc libdbi-perl libdbd-mysql-perl
```

Instalación de Nagios
> https://www.nagios.org/downloads/nagios-core/ la version open source (nagios core)

```sh
  > wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.4.tar.gz -O nagioscore.tar.gz
```

Descomprimir y desempaquetar archivos con tar

```shell
  > tar xvzf nagioscore.tar.gz (que me lo extraiga,ver el log,descomprime, y el archivo)
```

Este comando creará una carpeta nagios-4.4.4. El nombre de la carpeta puede variar dependiendo de la versión que descargaste. Entrando a esta carpeta podemos ejecutar diferentes archivos y comandos para configurar el software y realizar la instalación.

```shell
  # 1:
  sudo ./configure --with-https-conf=/etc/apache2/sites-enabled
  # 2:
  sudo make all
  # 3:
  sudo make install
  # 4:
  sudo make install-init
  # 5:
  sudo make install-commandmode
  # 6:
  sudo make install-config
  #7:
  sudo make install-webconf
```

Si da error en el paso de ejecutar “sudo make install”, primero tienen que hacer lo siguiente:

```shell
  sudo make install-groups-users
  sudo usermod -a -G nagios www-data
```

```shell
  sudo make install-groups-users
  #Este script viene en el código de nagios y ejecuta los comandos
      # Crea el grupo nagios
      # groupadd -r nagios

      # Crea el usuarios nagios y lo agrega al grupo nagios
      # useradd -g nagios nagios

  # Este agrega el usuario www-data (de apache) al grupo nagios
  sudo usermod -a -G nagios www-data

```

Activar el servicio de Nagios

`sudo systemctl start nagios`
Por último, para administrar el servicio de nagios podemos usar el comando sudo systemctl (status, start, restart, reload, stop, enable, disable, list-dependencies) nagios.
