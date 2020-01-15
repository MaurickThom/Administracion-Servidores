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
     en dos , haciendo el seguimientos a esos dos archivos
