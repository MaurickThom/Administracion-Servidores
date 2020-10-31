**Monitoreo de recursos del sistema**

- `top` : interfaz gráfica que nos muestra la informaión especifica del sistema operativo
    - `load average` muestra la carga promedio, provee una representación del 1 al número de 
        procesadores que tenda nuestro servidor del uso de los mismos .
    - `load average: 0.19, 0.56, 0.52` si tengo un solo procesar el numero de cada uno solo podria llegar a 1
        si tengo dos solo podria llegar hasta dos y asi sucesivamente
- `free` : Muestra la información sobre la memoria de mi sistema . Con el modificador `**-h**` la
    información es mas legible
- `du` : Muestra la información sobre el disco duro. Con el modificador `**-hsc**` y un directorio específico
    muestra el tamaño de ese directorio `**du -hsc /home/sony**`
- `htop` : `sudo apt-get -y install htop` -> cuando ejecutamos el comando `htop` nos mostrará de forma mas detalla los procesos , CPU y RAM que ejecuta el sistema operativo
   ademas de herramientas para filtrar , ordenar y muchas cosas mas que una interfaz gráfica apunta de botonos y graficas nos proporcionaría .
 
> Si nos interesa conecer la informacion de la CPU `cat /proc/cpuinfo | grep "Processor"` <br>
> No se encontrará nada ya que la linea de comando de linux son case sensitive  `cat /proc/cpuinfo | grep "processor"` <br>
> Pero si queremos agregar el ignore case `-i` `cat /proc/cpuinfo | grep -i "Processor"`

- Si queremos conocer que procesos consumen más CPU se consumen en el sistema operativo
- `sudo ps aux | sort -nr -k 3 | head -5` -> `-k` key (%MEM) verifica el numero de columna de ps aux

- Si queremos conocer que procesos consumen más RAM
- `sudo ps aux | sort -nr -k 4 | head -5`

- ps aux : procesos que corren en el sistema operativo
- ps aux | grep thom : procesos del usuario thom
- nohup ./script.sh => lo que hara es que generará un archivo nohub.out donde almacenara el output del ejecutable,
    esto muy util cuando genero despligue en servidores

**Diferencia entre aux u auxf**

Para maximizar la información que proporciona ps (muestra los procesos actuales del sistema que esten el backgroun hechas por el usuario) se utiliza aux
pero tambien existe auxf , la diferencia consta que `f` se agrupará como procesos en un árbol de procesos. Personalmente recomiendo aux y no auxf
ya que para el comando `sudo ps auxf | sort -nr -k 3 | head -5` en algunos casos no podre ver el path padre del procesos que consume mucha CPU

- **Estructura del Standard Output `ps`**
    - `USER` : nos dice el usuario del servidor dueño del proceso
    - `PID` : Process ID en el servidor , se puede utilizar para matar el proceso
    - `%CPU` : porcentaje del CPU que usa el proceso
    - `%MEM` : Porcentaje de la memoria RAM que utiliza el proceso
    - `VSZ` : Size Virtual - tamaño de la memoria virtual del proceso . Esto se puede almacenar en la memoria principal (RAM), en el disco duro o en combinación de ambos
    - `RSS` : tamaño de la memoria (RAM) real del procesos. 
    - `TTY` : Indica en que terminal se ejecutó o se está ejecutando el proceso
        - ? : significa que se está corriendo en una terminal local
    - `STAT` : Status - Indica el estado del proceso
    - `START` : El tiempo en la que el procesos empezó a ejecutarse en el servidor
    - `TIME` : el tiempo de CPU ne minutos y segundos que el proceso se ha estado ejecutando
    - `COMMAND` : el comando que ejecutó el proceso

Monitoreo de MySQL con Nagios

Instrucciones

    Instalar MySQL Server

sudo apt install mysql-server

    Obtener el password de MySQL

sudo vim /etc/mysql/debian.cnf

    Iniciar sesión en MySQL

mysql -u debian-sys-maint -p

    Asegurar el server de la base de datos

sudo mysql_secure_installation

    Verificar que Apache esté funcionando

systemctl status apache2

    Activar módulos rewrite y cgi

sudo a2enmod rewrite cgi

    Reiniciar Apache

sudo systemctl restart apache2

    Crear un usuario para Nagios

sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin 

    Entrar a Nagios en nuestro navegador web, escribiendo como dirección:

direccion_ip_del_servidor:8080/nagios

Es muy importante notar que estamos ingresando en el puerto 8080, ya que ahí es donde está funcionando Apache

    Instalar las siguientes dependencias:

sudo apt install -y libmcrypt-dev make libssl-dev bc gawk dc build-essential snmp libnet-snmp-perl gettext

    Si no instalaste los plugins en las clases anteriores, debes hacer lo siguiente: en primer lugar, posicionado en tu home, descargarlos

wget https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz -0 plugins.tar.gz -O plugins.tar.gz

    Desempaquetar y descomprimir el archivo de plugins

tar xzvf plugins.tar.gz

    Ya en la carpeta de plugins que se creo con el paso anterior, configurar los mismos

sudo ./config

    Verificar que no existan errores ni warnings

sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

    Reiniciar Nagios

sudo systemctl restart nagios

    En nuestro home, descargar el plugin de MySQL

wget https://labs.consol.de/assets/downloads/nagios/check_mysql_health-2.2.2.tar.gz -O mysqlplugin.tar.gz

    Desempaquetar y descomprimir el archivo del plugin

tar xzvf mysqlplugin.tar.gz
