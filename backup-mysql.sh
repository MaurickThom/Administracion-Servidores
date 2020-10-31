#!/bin/bash
# Shell script para obtener una copia desde MySQL

# este script se llamara desde un crontab, ejecutara el script cada x tiempo, este path es para ver desde donde se ejecutará el script
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
# definicion de todas las rutas donde solo se puede ejecutar el script

set -e # detendrá la ejecución del script por si hay alguna falla


# variables de solo lectura
# Estas son como variables globales, es decir, pueden llamarse aún estando dentro de
#  funciones.
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly SCRIPT_NAME="$(basename "$0")"

function assert_is_installed { # esta funcion solo se encargara de preguntar si estan instalado los paquetes
	local readonly name="$1"
	if [[ ! $(command -v ${name})]]; then # esto es para validad si el comando no da una respuensta, eso significa que no esta instalado lo cual ejecutara otra funcion con un error
		log_error "The binary '$name' is required but it isn't in our system"

    # Exit code 0        Success
    # Exit code 1        General errors
		exit 1
  fi
}

function log_error {
	local readonly message "$1"
	log "ERROR" "$message"
}

function  log {
	local readonly level="$1"
	local readonly message="$2"
	local readonly timestamp=$(date +"%Y-%m-%d %H:%M:%S") >&2 echo -e "${timestamp} [${level}] [$SCRIPT_NAME] ${message}"

}

function run {
	assert_is_installed "mysql"
	assert_is_installed "mysqldump"
	assert_is_installed "gzip"
	assert_is_installed "aws"
}
function make_backup {
	local BAK="$(echo $HOME/mysql)"
	local MYSQL="$(which mysql)"
	local MYSQLDUMP="$(which mysqldump)"
	local GZIP="$(which gzip)"
	local NOW="$(date +"+%d-%m-%Y")"
	local BUCKET="xxxxx"

	USER="xxxxxx"
	PASS="xxxxxx"
	HOST="xxxxxx"
	DATABASE="xxxxxx"

	[! -d "$BAK" ] && mkdir -p "$BAK"

	FILE=$BAK/$DATABASE.$NOW-$(date +"%T").gz
	local SECONDS=0

	$MYSQLDUMP --single-transaction --set-gtid-purged=OFF -u $USER -p $PASS -h $HOST $DATABASE | $GZIP -9 > $FILE

	duration=$SECONDS
	echo "$($duration / 60) minutes"
	aws s3 cp $BAK "s3://$BUCKET" --recursive
}

run
make_backup

# https://blog.desdelinux.net/como-ofuscar-u-ocultar-codigo-de-nuestros-scripts-bash/
