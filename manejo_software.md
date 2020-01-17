**Análisis de parámetros de red**

- Una IP es un identificador único para los equipos que están conectados a una red.
- Las IPs privadas se utilizan para identificar los dispositivos dentro de una red local. Por ejemplo los dispositivos conectados en tu caso u oficinas
- Las IPs públicas son la que se asignan a cualquier dispositivo conectado a internet. Por ejemplo los servidores que alojan tus sitios web, el router que te da
     acceso a internet, entre otros.
- Si el disposituvo tiene una IP pública significa que puede conectarse a otro que también tenga una. Por esto mismo, no puede haber dos dispositivos con la misma IP pública
- Para encontrar la dirección IP de nuestros dispostivos se debe usar lo siguientes comandos
    - Linux y Mac : `ifconfig` ó `ip a`
    - Windows : `ipconfig`
- Para ver el nombre ó identificador de nuestro equipo en todas las redes podemos usar `hostname`
- Tambien podemos ver que dispositivo nos permite el acceso a internet `route -n`
- Para identificar las IPs de diferentes dominios podemos usar el comando `nslookup nombre_dominio.ext`
    - `nslookup localhost`
    - `nslookup platzi.com`
- `curl ifconfig.me` : Nos proporsiona nuestra IP pública
- Opciones para obtener nuestra IP privada
    - `ifconfig` -> en el apartado  de inet(IPv4) xxx.xxx.x.xxx  -> x = numeros, init6(IPv6)
    - `ip route`
    - O irse a la configuración de la red y ver la direccion IPv4
- Opciones para obtener nuestra IP pública
    - `curl ifconfig.me`
    - `curl ifconfig.co`
    - `curl icanhazip.com`
    - `wget -qO- ifconfig.co/ip`
    - `wget -qO- http://ipecho.net/plain`

> ifconfig : interface config<br>
> ip a  : ip adress show <br>
- ip -4 a : nos muestra todas las IPv4 que tiene nuestro servidor <br>
- ip -6 a : nos muestra todas las IPv6 que tiene nuestro servidor <br>

**Administración de paquetes acorde a la distribución**

- Red hat / CenOS / Fedora
    - `.rpm` : red hat package management
    - Repositorios `yum`
- Debian / Ubuntu
    - `.deb`
    - `dpkg-reconfigure`
    - repositorios `apt`

**Red Hat Package Management**

- Base de datos RPM : localizada en `/var/lib/rpm`
- `rpm -qa` : Listar todos los rpms instalados en la maquina
- `rpm -i paquete.rpm` : realizar instalación de un paquete
- `rpm -e paquete.rpm` : remover un paquete del sistema

- El comando `yum` : nos permite instalar un paquete desde un repositorio sin tener que conocer la ruta del archivo o las dependencias
 - `yum install paquete`

**Debian package Management**

- Base de datos DPKG : localizada en  /var/lib/dpkg
- `dpkg -l` : lista toddos los archivos debs instalados en la maquina
- `dpkg -i paquete.deb` Realiza instalación de un paquete
- `dpkg -r paquete.deb` Remover un paquete del sistema

**Diferencia entre apt-get pdate y apt-get upgrade**

- `sudo apt-get update` : Actualiza la lista de paquetes disponibles  y sus versiones, pero no instala o actualiza ningun paquete
- `sudo apt-get upgrade` : iUna ves digitado el comando anterior que descargará las actualizaciones . podemos mejorar los paquetes que ya teniamos disponibles
  y actulizarlos. Instalará las nuevas versiones respetando la configuración  del software  cuando sea posible

- Para buscar los paquetes a instalar `sudo apt search "mysql"` `sudo apt search "expresion regex"`
- Otra forma de buscar paquetes es con `sudo apt-cache search "mysql-server$"`

Imaginemos que configuramos mal un paquete, entonces para no tener que desintalar y luego instalar podemos reconfigurar
con `dpkg-reconfigure` pero primero vemos el nombre del paquete (este paso es opcional, ya que podemos saber el nombre del paquete) `dpkg -l`

`sudo pkg-reconfigure nombre-paquete`

En Debian existe otro nuevo gestor de paquetes llamado `snap`

- `sudo snap search aws-cli` : buscar paquetes con snap
- `sudo snap refresh --list` : ver todos nuestros paquetes
- `sudo snap info aws-cli` : verificar la informacion de un apquete especifico

### **Recursos**

- [Direcciones](https://ubunlog.com/direccion-ip-publica-privada/)
