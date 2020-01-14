# **Administracion-Servidores**

## **Distribuciones Linux**

### **Diferencias entre ubuntu server y ubuntu desktop**

- Ubuntu server : Producto dedicato a clientes como organizaciones y/o empresas , no incluye un GUI por defector.
- Ubuntu desktop : Dedicado para el usuario final, que contiene un navegador web y varios paquetes de forma visual.

Las dos distros forman parte deun nodo comun a nivel de repositorios internos que una el kernel y los sitema unix.

- Ubuntu server vs centOS server : Ubuntu server mayor mente para desplegar aplicaciones web y centOS server para aplicaciones
  empresariales

## **Instalación de maquinas viruales con Virtual Box**

.

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
