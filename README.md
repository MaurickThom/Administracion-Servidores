# **Administracion-Servidores**

## **Distribuciones Linux**

### **Diferencias entre ubuntu server y ubuntu desktop**

- Ubuntu server : Producto dedicato a clientes como organizaciones y/o empresas , no incluye un GUI por defector.
- Ubuntu desktop : Dedicado para el usuario final, que contiene un navegador web y varios paquetes de forma visual.

Las dos distros forman parte deun nodo comun a nivel de repositorios internos que una el kernel y los sitema unix.

- Ubuntu server vs centOS server : Ubuntu server mayor mente para desplegar aplicaciones web y centOS server para aplicaciones
  empresariales

## **Instalación de maquinas viruales con Virtual Box**

```sh

    # para apagar una maquina virtual
    > shutdown -h now

```

Estos pasos son despues de crear la maquina virtual

- En la configuración de la maquina virtual , en la sección Red cambiar de NAT a Adaptador puente luego en nombre enp4s0
- En avanzadas, colocar en el Modo promiscuo "Permitir todo" y cable conectado seleccionado
- En la sección de Storage(almacenamiento) se seleccionará el cd(controlador IDE) que dice "Vacio" , y en el apartado de atributos a la descarga anteriormente.
  Aceptamos los cambios.(atributos -> unidad Optica -> seleccionamos el documento iso que descargamos -> aceptar)
- Iniciamos la máquina virtual
- Si estamos trabajando en un servidor físico, deberiamos seleccionar "Comprobar memoria"
- Instalación del sistema operativo

Para verificar que un archivo descargado desde internet no está corrupto `sha256sum nombre` el hash resultande debe ser igual al servicio que nos
otorgó la descaerga

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

## ***Recursos***

- [**Diferencia entre ubuntu server y ubuntu desktop**](https://www.solvetic.com/page/recopilaciones/s/ordenadores/diferencias-entre-ubuntu-desktop-escritorio-y-ubuntu-server)
- [**linux-statistics**](https://w3techs.com/technologies/details/os-linux)
- [**Linux Foundation**](https://www.linuxfoundation.org/publications/2018/06/open-source-jobs-report-2018/)
- (**Virtual Box**)[https://www.virtualbox.org/wiki/Linux_Downloads]
- (**Contenedor de Ubuntu**)[https://dockertips.com/ubuntu_1804]
