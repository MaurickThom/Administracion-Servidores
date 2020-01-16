- `pwd` nos muestra nuestra ubicación actal en el árbol de directorios ***(Print  Working Directory)***
- `ls` nos muestra el contenido de las carpetas de nuestro sistema operativo. Podemos especificar algiuna ruta o , por defecto
  listar el contenido  de la carpeta donde estemos trabajando
- `cd` cambiar nuestra ubicación en el árbol de directorios ***(Change Directory)***. Usando dos puntos `..` para referirnos al directorio padre

> Hay mas comando que dictan en el curso pero sinceramente ya los tengo en otro repositorio y algunos son simples de entender

**Diferencias entre LESS,CAT,HEAD y TAIL para lectura de archivos**

- `cat` por definición este comando se utiliza para concatenar archivos, pero se tambien se puede utilizar para leer archivos
    - `cat /var/log/auth.log` : aquí se encontrará toda la información de login del sistema operativo , la diferencia con less es
        que less pagina la informacion es como un `cat archivo | more` . Recomendación `cat` no es recomandable para leer archivos
        grandes
- `less` este comando es utlizando internamente en el comando man que nos sirve para ver la información de cierto comando especifico
    digitado (ayuda sobre ccomando especificos)
    - destro de less se puede hacer una busqueda `: /palabra` en la parte inferior des pues de ejecutar el comando less o man
      sadra un barra de info ahi es donde se colocará el `/palabra`
- `tail -f /var/log/auth.log` : esto hara un seguimiento en el archivo para ver las modificaciones , si alguna persona hace un login
    en el sistema operativo en este archivo quedará registrado gracias a -f
    - `ssh username@hosti` para conectarme a una maquina de forma remota y el la otra maquina si tenemos el tail -f veremos en tiempo real
     la información del usuario conectado a nuestra maquina
    - Para leer multiples archivos con tail se usa `/` ejemplos : `tail -f /var/log/auth.log / /var/log/dpkg.log` nos mostrará la termianl partida
     en dos , haciendo el seguimientos a esos dos archivosi

**Permisos**

- `sudo chown nuevoUser archivo.txt` : establece que el propietario de archivo sea nuevoUser
- `sudo chown -R user /var/home` : establece a user cmo propietario de todos los directorios , subdirectorios y archivos dentro del path
  de forma recursiva , si agregamos el -c `sudo chown -R -c user /var/home` nos informara de los cambios que está hacienod
- `sudo chown user1:user2 arcchivo.txt` : Lo que hará es que el propietario del archivo sea user1 y el grupo sea user2
- `sudo chown :user2 archivo`  : agregamos el propietario del grupo
- `sudo chmod g-w test` quita el permiso de escritura a group de test
- `chmod =r archivo` elimina todas los permisos de los tres (own group other) y agregar solo escritura a los tres
- `chmod g-x,o-x archivo` : quita en grupo la ejecución y others tambien
- `chmod u-x+w archivo` : quita a user la ejecución y agrega la escritura
- `chmod u=rwx,g=rwx,o=rx archivo`
- `chmod u=rwx,go=` : chmod 700
- `chmod u=rwx,g=rx,o=`
- `chown nuevousuario *` para cambiar el usaurio de los directorios y archivos de donde nos encontramos
- `chown -R nuevousuario *` : lo mismo que el anterior de forma recursiva
- `chmod g=u foobar` copiar los permisos de usuario a grupo  

- `-rw-r--r-- 1 sony sony 3603 Jan 15 16:47 linux.md` : permisos cantidad_de_enlaces_que_tiene usuario grupo file_size .....

![Linux](https://blogcitochia.files.wordpress.com/2017/03/arbol-linux.png?w=775)

> FHS (FileSystem Hierarchy Standard) estandar de directorios que utilizan los sistemas operativos linux y los derivados de unix

**Usuarios y Grupos**

.

**Terminales en linux**

Las distribuciónes de linux para servidores no incluyen interfaz gráfica, ya que consumen muchos recursos.Esto significa
que vamos a trabajar desde la terminal

Tendremos disponibles 6 terminales virtuales a las que podemos entrar o salir con las teclas `CTRL + ALT + Fx` (ojo thom no te olvides el idioma 
del teclado tiene que estar necesariamente en ingles) ese `x` significa que puede ser F1,F2 ...`CTRL+ALT+F1` . También podemos usar el comando
`chvt` . La septima terminal es la terminal gráfica

Cada usuario activo en nuestro sistema operativo crea una una conexión . Podemos ver todas estas conexiones con los comandos `who` y `w`
(este ultimo nos da un poco más de información) .

Podemos ver todos los procesos que corren en el background que el usuario actual ejecutó `ps`
Para poder filtrar los procesos y ver únicamente las conexiones de los usuarios usamos `ps -ft tty`

Consolas físicas tendrán una numeración de tty1 ... tty6

- `chvt 1` - chvt n cambiar de consola
- `tty` para ver en que terminal estoy
- `w` verificar que terminales estan abiertas y sus usuarios
- `who` ver las conexiones
- `kill id` matar a un procesos y pide confirmación
- `kill -9 id` mata sin confirmación

## *Recursos* 

- [En em menu hay posts acerca de linux](https://santi-gf.github.io/)
- [Particionamiento segun Red Hat](https://access.redhat.com/documentation/es-es/red_hat_enterprise_linux/6/html/installation_guide/s2-diskpartrecommend-x86)
- [grupos 1](https://eltallerdelbit.com/usuarios-grupos-linux/)
- [grupos 2](https://expertosdelinux.com/anadir-usuario-grupo-linux/)
- [Enlaces](https://geekland.eu/que-son-para-que-sirven-enlaces-duros-y-simbolicos/)
- [Arbol de directorios - detallado](https://www.taringa.net/+linux/el-arbol-de-directorios-de-linux-al-detalle-que_hmjsk)
