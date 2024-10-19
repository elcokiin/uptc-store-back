-- Eliminar la base de datos
DROP DATABASE IF EXISTS uptc_store;

-- Eliminar el usuario relacionado con la base de datos
DROP USER IF EXISTS 'uptc_user'@'localhost';

-- Eliminar posibles privilegios asignados al usuario
REVOKE ALL PRIVILEGES ON *.* FROM 'uptc_user'@'localhost';
FLUSH PRIVILEGES;