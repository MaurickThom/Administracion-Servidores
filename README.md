# **Administracion-Servidores**

## **Distribuciones Linux**

### **Diferencias entre ubuntu server y ubuntu desktop**

- Ubuntu server : Producto dedicato a clientes como organizaciones y/o empresas , no incluye un GUI por defector.
- Ubuntu desktop : Dedicado para el usuario final, que contiene un navegador web y varios paquetes de forma visual.

Las dos distros forman parte deun nodo comun a nivel de repositorios internos que una el kernel y los sitema unix.

- Ubuntu server vs centOS server : Ubuntu server mayor mente para desplegar aplicaciones web y centOS server para aplicaciones
  empresariales

## **Instalación de maquinas viruales con Virtual Box**

### **Ubuntu Server**

```sh

    # para apagar una maquina virtual
    > shutdown -h now

```

Nuevo-> {nombre:thom-server,tipo:Linux,version:Ubunto 64 bit}

Estos pasos son despues de crear la maquina virtual

- En la configuración de la maquina virtual , en la sección Red cambiar de NAT a Adaptador puente ,luego en nombre enp4s0 ( red cableada)
- En avanzadas, colocar en el Modo promiscuo "Permitir todo" y cable conectado seleccionado
- En la sección de Storage(almacenamiento) se seleccionará el cd(controlador IDE) que dice "Vacio" , y en el apartado de atributos a la descarga anteriormente.
  Aceptamos los cambios.(atributos -> unidad Optica -> seleccionamos el documento iso que descargamos -> aceptar)
- Iniciamos la máquina virtual
- Si estamos trabajando en un servidor físico, deberiamos seleccionar "Comprobar memoria"
- Instalación del sistema operativo

Para verificar que un archivo descargado desde internet no está corrupto `sha256sum nombre` el hash resultande debe ser igual al servicio que nos
otorgó la descarga

Cuando lleguemos a la sección de `conecciones de red`
- seleccionamos enp0s3 eth -> (abrimos) edit IPv4 -> Automatic (DHCP) -> hecho

Si en la organizacion o compañia que estamos trabajando tenemos algun proxy este es el momento preciso para la configuración
-> hecho

Direccion espejo de ubuntu , el 99% de la veces no debe modificar , si se tiene una conexion muy lenta o algun problema con la descarga de archivos
se deberia cambiar , pero no es lo ideal -> hecho

Luego se selecciona-> Use An Entire Disk 

Configuracion de sistema de archivos -> saldra el disco que creamos al crear la maquina virtual
-> Hecho -> continuar 

nombre : thom-server
nombre del servidor : minitank (este nombre es importante por que nos dirá como entraremos este servidor en la red)
nombre usuario : minitank
contraseña : `*******`

-> hecho

Si queremos que nuestro servidor pueda ser accedido de forma remota debemos instalar OPENSSH,`thom del futuro no te olvides está parte tienes que instalarlo`
SSH SETUP

[X] Install OpenShh Server (tecla space)
Importar la indentidad [No] (con TAB podemos saltar de opciones)
-> hecho

(no instalamos nada)
-> hecho
-> Reiniciar

### **CentOS**

`thom del futuro fíjate la version - el link es de la version 8.0.1905 tambien recuerda que si descargas la version del link esta pesará 6.6GB ya que incluye una interfaz gráfica`<br>
Descargamos : GET CentOS Now -> linux DVD iso -> ![descarga](http://mirror.unimagdalena.edu.co/centos/8.0.1905/isos/x86_64/CentOS-8-x86_64-1905-dvd1.iso)

Nueva maquina virtual -> {nombre:thom-server-centos,tipo:linux,version:Red Hat 64-bit} -> siguiente
-> siguente -> crear ...

configuración -> igual que el ubuntu server

Install Centos8 -> Idioma Aquí a diferencia que en el ubuntu (solo fue en ingles el tecldo) aquí selecionaremos ingles -> continuar

Localization -> Network hot name -> Ethernet (enp0s3) ON -> (cambiar el nombre de host) Host namee : thom-server -> apply -> done
Installation Destination ->  seleccionamos Local standar disks -> done
Date Time -> America New York-> done
Begin Installation

User settings

root password -> `******`
user creation -> `minitank` -> `*****` -> Done




## **Instalaccion de Ubuntu en docker**

```sh

    # primero me traigo la imagen de ubuntu
    > docker pull ubuntu:18.04
    > docker run -it ubuntu:18.04 /bin/bash

    # Ahora si salimos del contedor y no lo apagamos y queremos volver a entrar
    > docker exec -it ID-CONTAINER /bin/bash
    
    # para encender el contenedor
    > docker start ID-CONTAINER

    # para apagar el contenedor
    > docker stop ID-CONTAINER
```

## **Recordatorio**

Antes de descargar una version de algun software debemos verificar si tiene soporte a largo tiemo (LTS), ya
que esta nos brindará soporte por 5 años, mientras que las que tienen ese tipo de soporte solo contaremos con
actualizaciones por 9 meses.

Centos es una derivada de RedHat, para poder utilizar Redhat es necesario comprar la licencia, pero para
Centos no.

Redhat para aplicaciones empresariales
Ubuntu server para deplegar sitios web.

## ***Recursos***

- [**Diferencia entre ubuntu server y ubuntu desktop**](https://www.solvetic.com/page/recopilaciones/s/ordenadores/diferencias-entre-ubuntu-desktop-escritorio-y-ubuntu-server)
- [**linux-statistics**](https://w3techs.com/technologies/details/os-linux)
- [**Linux Foundation**](https://www.linuxfoundation.org/publications/2018/06/open-source-jobs-report-2018/)
- [**Virtual Box**](https://www.virtualbox.org/wiki/Linux_Downloads)
- [**Contenedor de Ubuntu**](https://dockertips.com/ubuntu_1804)
- [**CentOS**](https://www.muylinux.com/2019/09/24/centos-8-centos-stream/)
