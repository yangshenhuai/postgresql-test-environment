#use this as the exec in applications, so we can start the pg and pgadmin in GONME applications
HOME="${PG_HOME:-/home/peter/Documents/code/postgresql}"
cd $HOME ;
docker-compose down;
docker-compose up -d;
flatpak run org.chromium.Chromium http://localhost:5050 ;