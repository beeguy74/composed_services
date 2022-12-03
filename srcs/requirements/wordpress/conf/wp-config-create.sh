wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --path=/var/www/wordpress --allow-root
cd /var/www/wordpress
wp config create --dbname=wordpress --dbuser=wp_user --dbpass=1234 --dbhost=my-db --allow-root
wp core install --url=tphung.42.fr --title="tphung-wp" --admin_user=tphung --admin_password=1234 --admin_email=info@wp-cli.org --allow-root

php-fpm7 -F
#wp server --host=0.0.0.0 --port=9000 --allow-root
