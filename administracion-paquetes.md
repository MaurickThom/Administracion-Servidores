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