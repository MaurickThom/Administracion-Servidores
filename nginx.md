sudo apt search nginx
sudo apt search "nginx$"
sudo apt update && sudo apt install nginx
sudo systemctl status apache2, esto esta en el puerto 80
sudo systemctl status nginx, este no puede ya que apache ocupa su lugar
netstat -tulpn, con esto vemos los servicios t tcp,u udp,l listen, p port , n liste en forma numerica
sudo systemctl stop apache2
sudo systemctl status apache2
netstat -tulpn
cd /etc/nginx
ls
vi ngnix.conf
cd sites-available
ls
vi default
cd /var/www/html
curl localhost
curl -I localhost
cd /etx/nginx/sites-enabled/
ll

truco puedo ejecutar un comando de history solo se pone `!numero`

NGINX Amplify es una herramienta SaaS que permite realizar el monitoreo de NGINX y NGINX Plus. Los factores que permite monitorear son el rendimiento, configuraciones con análisis estático. parámetros del sistema operativo, así como PHP-FPM, bases de datos y otros componentes. Nginx Amplify es de fácil configuración y llevar control de nuestros servidores es agradable por los tableros de administración que posee.

Con NGINX Amplify podrás recolectar más de 100 métricas de NGINX y el sistema operativo. Amplify analiza los archivos de configuración propios del servidor, detecta configuraciones incorrectas y da recomendaciones de seguridad, también permite crear notificaciones que pueden ser enviadas por correo o a un canal de Slack con un simple clic.

Los tableros de mando de Amplify sirven para verificar la disponibilidad del sitio e identificar situaciones anómalas en diferentes periodos de tiempo. Otra característica a destacar es que NGINX Amplify te permite administrar varios sitios, direcciones IP y un nombre para identificarlo.

Proceso de instalación

Instalar Python 2.7

  sudo apt install python2.7

Movernos a la carpeta de Nginx

  cd /etc/nginx

Modificar el archivo conf.d de la siguiente manera

sudo cat > conf.d/stub_status.conf
server{
	listen 127.0.0.1:80;
	server_name 127.0.0.1;
	location /nginx_status {
		stub_status on;
		allow 127.0.0.1;
		deny all;
	}
}

Matar el proceso de Nginx

  sudo kill -HUP `cat /var/run/nginx.pid`

Reiniciar y habilitar Nginx

  sudo systemctl restart nginx && systemctl enable nginx

Logearnos en el sitio web de Nginx Amplify y seguir las instrucciones de instalación: https://amplify.nginx.com
Iniciar el servicio de Nginx Amplify

service amplify-agent start

Reiniciar Nginx

sudo systemctl restart nginx

> https://docs.bluehosting.cl/tutoriales/servidores/como-configurar-nginx-para-obtener-un-rendimiento-optimo.html
