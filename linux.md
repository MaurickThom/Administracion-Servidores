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

**Usuarios y Grupos**


