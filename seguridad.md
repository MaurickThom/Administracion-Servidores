#

## **gestión de vulnerabilidades**

Malas prácticas

  No desactivar el usuario root
  Realizar un login con usuario y password (sin ssh)
  No validar la versión de software usada
  Utilizar comandos r* o telnet
  No identificar los servicios y puertos abiertos en el S.O
  No gestionar correctamente los permisos de los usuarios

Buenas prácticas

Verificar las actualizaciones de seguridad y realizar la instalación de las mismas.
En CentOS:

yum check-update --security
yum update security

En Ubuntu:

apt-get update
apt-get upgrade

## **¿Qué es una superficie de ataque? Principio del menor privilegio**

La Superficie de Ataque es el conjunto de vulnerabilidades o datos conocidos que pueden ser explotados por un atacante informático. Cada servicio de nuestras aplicaciones es un nuevo punto de entrada a nuestra red. No solo debemos proteger nuestros servidores, también debemos proteger todos los servicios que corren en él.

Lynis es una herramienta que analiza nuestros servidores y para darnos algunas recomendaciones. La estudiaremos más a fondo en una próxima clase. También existen frameworks o manuales como OWASP que nos explican las características de aplicaciones web vulnerables y cómo programarlas de forma segura.

Manuales y frameworks útiles para la seguridad de nuestro servidor

- SCAP: El Security Content Automation Protocol es un conjunto de reglas sobre la 
  expresión y manipulación de información relacionada con configuraciones y fallos.
- OWASP: El Open Web Application Security Project es un proyecto de código abierto 
  destinado a pelear contra la inseguridad informática

## **El firewall y sus reglas**

> sudo ufw allow 22 commnet 'ssh'

Los Firewalls son herramientas que monitorean el tráfico de nuestras redes para identificar amenazas e impedir que afecten nuestro sistema.

Recuerda que la seguridad informática es un proceso constante, así que ninguna herramienta (incluyendo el firewall) puede garantizarnos seguridad absoluta.

En Ubuntu Server podemos usar ufw (Uncomplicated Firewall) para crear algunas reglas, verificar los puertos que tenemos abiertos y realizar una protección básica de nuestro sistema:

    - sudo ufw (enable, reset, status): activar, desactivar o ver el estado y reglas de nuestro firewall.
    - sudo ufw allow numero-puerto: permitir el acceso por medio de un puerto específico. Recuerda que el puerto 22 es por donde trabajamos con SSH.
    - sudo ufw status numbered: ver el número de nuestras reglas.
    - sudo ufw delete numero-regla: borrar alguna de nuestras reglas.
    - sudo ufw allow from numero-ip proto tcp to any port numero-puerto: restringir el acceso de un servicio por alguno de sus puertos a solo un número limitado de IPs específicas.

Abrir al público únicamente el puerto 80 (http), 443 (https). Para un conjunto de IP’s específicas, habilitar el puerto 22 (ssh) solo a ciertas ip's

Para banear una IP específica:

sudo ufw insert 1 deny from {IP} comment 'Bloqueada ip de Atacante'

Para banear una red:

sudo ufw insert 1 deny from {IP}/{rango} comment 'Bloqueada ip de Atacante'

## .

sudo ufw status
sudo ufw allow 22 comment 'SSH'
sudo ufw enable
sudo ufw status
sudo ufw status numbered
sudo ufw delete 2
sudo ufw status
sudo ufw allow from 10.106.51.10 proto tcp to any port 22 comment "Permitir SSH IP", se autoriza la conexion solo a una ip determinada, es decir que las conexiones solo se haran por esa ip
sudo ufw reset, para borrar las reglas

## .

```sh
  > sudo apt search lynix
  > sudo apt install lynix -y
  > sudo lynis audit system #  Realiza un escaneo del sistema operativo, mostrándonos sugerencias y el estado de peligro de ciertos detalles en nuestra distribución
```
