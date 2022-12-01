ALTER USER 'root'@'localhost' IDENTIFIED BY '1234';
CREATE DATABASE wordpress CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'wp_user'@'%' IDENTIFIED by '1234';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_user'@'%';
FLUSH PRIVILEGES;
