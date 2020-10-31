FIND

Nos ayuda a buscar archivos y/o carpetas en el sistema operativo. Podemos filtrar por tipo de archivo con -type, por nombre con -name, sin hacer diferencia entre mayúsculas y minúsculas con -i, por fecha de modificación con -mtime, entre otros.

Por ejemplo:

    find /etc -type f
    sudo find /etc -mtime 10
    find /var/log -name "*.log" -type f
    find /var/log -iname "*.LOG" -type f

GREP

Nos ayuda a filtrar el resultado de un comando o archivo dependiendo de las palabras de cada línea.

Por ejemplo:

    grep "server" /etc/nginx/sites-available/default
    ps aux | grep platzi

AWK

Es un lenguaje de scripting que nos ayuda a procesar información usando patrones para filtrar, reorganizar y darle formato a nuestros datos.

Por ejemplo:

    awk '{print $1}' /var/log/nginx/access.log
    awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr


## **Otros servicios de logs**

Un servidor puede llegar a registrar millones de líneas de datos en un log. Para facilitar el monitoreo y mantenimiento podemos usar herramientas o tecnologías que nos permitan tomar esta información sin procesar y convertirla en visualizaciones fáciles de consumir y entender.

El primer paso para seleccionar las herramientas que usaremos. Lo primero es tener una base de conocimiento que nos identifique el servidor en circunstancias normales y de esta forma con la ayuda de estas herramientas detectar preocupaciones o incluso tendencias con una sola mirada.

Algunas herramientas que podemos tener en distribuciones Linux son:
Collectd

Es un demonio que recopila datos de rendimiento, y junto con la herramienta collectd web, es capaz de generar reportes que se pueden visualizar en un navegador WEB. Se puede establecer un servidor y a él conectarle un número ilimitado de clientes remotos. Podemos agregar más plugins si los necesitamos, para ello podemos visitar la página https://collectd.org/wiki/index.php/Table_of_Plugins
Nmon

Obtener visualizaciones rápidas de mi sistema. Se instala con apt install nmon. Tiene una característica especial que me permite guardar en archivos de formato nmon que se pueden convertir en información que puede ser presentada en html con la herramienta nmonchart. Nmon -f -s 15 -c 20, se recolectará información por cinco minutos mostrados en incrementos de 15 segundos 20 veces.
Munin

Es una herramienta para analizar el rendimiento del servidor que contiene gráficos históricos para facilitar la identificación de problemas en el tiempo.
Grafana

Permite consultar, visualizar, alertar y ante todo entender las métricas de negocio sin importar dónde están almacenadas. Se puede crear, explorar y compartir tableros de mando con el equipo basados en el principio de la cultura orientada a los datos.

También podemos instalar agentes de monitoreo en los servidores, algunas opciones son https://newrelic.com/ y https://www.datadoghq.com/, podemos tener una prueba del servicio y analizar el rendimiento de nuestro servidor.

Cabe aclarar que también necesitará algún sistema de alarma automatizado que nos envíe alertas de forma proactiva cuando las cosas no estén funcionando bien.
