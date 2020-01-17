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
- ip -6 a : nos muestra todas las IPv6 que tiene nustro servidor <br>


### **Recursos**

- [Direcciones](https://ubunlog.com/direccion-ip-publica-privada/)
