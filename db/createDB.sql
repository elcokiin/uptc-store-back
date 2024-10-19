CREATE DATABASE uptc_store;

CREATE USER 'uptc_user'@'localhost' IDENTIFIED BY 'store123';
GRANT ALL PRIVILEGES ON uptc_store.* TO 'uptc_user'@'localhost';
FLUSH PRIVILEGES;