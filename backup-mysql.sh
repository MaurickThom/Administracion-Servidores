#!/bin/bash
# Shell script para obtener una copia desde MySQL

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

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

run
make_backup
