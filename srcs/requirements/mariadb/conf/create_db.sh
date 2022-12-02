if [ ! -d "/var/db/wordpress" ]; then
	touch /not_wp
	mysqld --user=mysql --datadir=/var/db --init_file=/init.sql  --port=3306 --bind-address=0.0.0.0 --skip-networking=OFF
else
	touch /wp
	mysqld --user=mysql --datadir=/var/db --port=3306 --bind-address=0.0.0.0 --skip-networking=OFF
fi
