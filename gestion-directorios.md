# **Gestion de directorios en linux**

- `/` : carpeta principal, el padre de todos
- `/bin` : directorio de archivos binarios. En esta carpeta se encuentran los comandos de la terminal. `grep,ls,cd, etc`
- `/sbin` : Tambien aloja archivos binarios, pero la 's' significa que son del sistema. Encontraremos comandos de la terminal pero mas avanzados para la ejecucion de tareas en el sistema operativo como `reboot,mount,fsck,etc`
- `/boot` : Aquí se encuentra el kernel del OS. imagenes y maquinas de arranque
- `/dev` : Aquí se encuentran todos los tipos de almacenamiento en forma de archivos (en Unix todo es un archivo). Es decir un pendrive un discoduro un cd ,etc. Aquí esta la informacion de todos estos volumenes. Todos los dispotivos montados en linux estarán en `/dev`, si se ejecuta el siguiente comando `fdisk -l` se verá la estructura de particiones del sistema
- `/media` : en esta carpeta almacenará los **puntos de montaje** de la carpeta `/dev` es decir de los dispositivos. 
- `/etc` : Aquí van archivos de configuración de los componentes del sistema operativo y tambien de los distintos programas que se van instalando en la maquina
- `/home` : Esta carpera es equivalente a `Users` de windows, aquí estaán todos los usuarios
- `/lib` : Aquí van librerias esenciales para que los binarios puedan funcionar, si se tiene una maquina 64 bits la carpeta sera `/lib64` 
- `/opt` : Encargado de alojar carpetas de programas instalados en linux que son de otros propietarios. Ejem si se instala Chrome, este será el lugar donde se guardarán las carpetas
- `/tmp` : archivos temporales de todo tipo
- `/usr` : User System Resources, almacena archivos de solo lectura
- `/var` : almacena informacion, como logs, cache,etc

```sh
    # ver binarios ejecutables del sistema
    > ls usr/bin
    # muestra el numero de binarios ejecutables
    > ls usr/bin | wc -l
```