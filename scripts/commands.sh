#!/bin/sh

#O shell cancela a execução se houver erros
set -e

wait_psql.sh
collectstatic.sh
makemigrations.sh
migrate.sh
runserver.sh