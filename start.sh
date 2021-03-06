
# start database
service mysql start

# create database and site
mkdir web/sites/localhost
python3.7 /work/libs/zoom/bin/zoom database -e mysql -u root -proot -d zoomdata setup localhost

# start proxy server
service nginx restart

# run server
uwsgi --ini /work/uwsgi/uwsgi.ini
