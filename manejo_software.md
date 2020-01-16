**Análisis de parámetros de red**

- Una IP es un identificador único para los equipos que están conectados a una red.
- Las IPs privadas se utilizan para identificar los dispositivos dentro de una red local. Por ejemplo los dispositivos conectados en tu caso u oficinas
- Las IPs públicas son la que se asignan a cualquier dispositivo conectado a internet. Por ejemplo los servidores que alojan tus sitios web, el router que te da
     acceso a internet, entre otros.
- Si el disposituvo tiene una IP pública significa que puede conectarse a otro que también tenga una. Por esto mismo, no puede haber dos dispositivos con la misma IP pública
- Para encontrar la dirección IP de miestros dispistivos se debe usar lo siguientes comando
    - Linux y Mac : `ifconfig` ó `ip a`
    - Windows : `ipconfig`
- Para ver el nombre ó identificador de nuestro equipo en todas las redes podemos usar `hostname`
- Tambien podemos ver que dispositivo nos permite el acceso a internet `route -n`
- Para identificar las IPs de diferentes dominios podemos usar el comando `nslookup nombre_dominio.ext`
    - `nslookup localhost`
    - `nslookup platzi.com`
- `curl ipconfig.me`



### **Recursos**

- [Direcciones](https://ubunlog.com/direccion-ip-publica-privada/)
