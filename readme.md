# Proyecto TypeScript MySQL

Este proyecto está construido con TypeScript y utiliza MySQL como base de datos.

## Prerrequisitos

Antes de comenzar, asegúrate de cumplir con los siguientes requisitos:

* Tienes instalada la última versión de [Node.js y npm](https://nodejs.org/es/download/)
* Tienes instalado [TypeScript](https://www.typescriptlang.org/download) de forma global o como dependencia de desarrollo en tu proyecto
* Tienes instalado [MySQL](https://dev.mysql.com/downloads/mysql/) en tu máquina local

### Configuración de MySQL

1. **Instalar MySQL:**
   - Descarga e instala MySQL desde el sitio web oficial: https://dev.mysql.com/downloads/mysql/
   - Sigue las instrucciones de instalación para tu sistema operativo

2. **Iniciar el servicio de MySQL:**
   - En Windows:
     - Abre la aplicación Servicios
     - Encuentra el servicio de MySQL e inícialo
   - En macOS:
     - Usa el comando: `sudo mysql.server start`
   - En Linux:
     - Usa el comando: `sudo systemctl start mysql`

3. **Configurar la seguridad de MySQL:**
   - Ejecuta el script de instalación segura de MySQL:
     - En Windows: Ejecuta MySQL Installer y elige "Reconfigurar" para el MySQL Server
     - En macOS/Linux: Ejecuta `mysql_secure_installation` en la terminal
   - Sigue las indicaciones para:
     - Establecer una contraseña de root
     - Eliminar usuarios anónimos
     - Deshabilitar el inicio de sesión remoto de root
     - Eliminar la base de datos de prueba
     - Recargar las tablas de privilegios

4. **Creación de la Base de Datos:**
En la raíz del proyecto, hay una carpeta llamada db que contiene los siguientes archivos importantes:

  - createDB.sql: Este archivo crea la base de datos y el usuario.
    - Para ejecutar este archivo, accede a MySQL como root y usa el siguiente comando:
      ```
      mysql -u root -p < db/createDB.sql
      ```
    - Se te pedirá que ingreses la contraseña de root.
  - schema.sql: Este archivo contiene los comandos para crear las tablas de la base de datos.
  - constraints.sql: Este archivo contiene los comandos para agregar las restricciones a las tablas.

Después de crear la base de datos y el usuario con createDB.sql, debes ejecutar schema.sql y constraints.sql en ese orden. Puedes hacerlo con los siguientes comandos:
```
mysql -u uptc_user -p uptc_store < db/schema.sql
```
```
mysql -u uptc_user -p uptc_store < db/constraints.sql
```

## Instalación

Para instalar este proyecto, sigue estos pasos:

1. Clona el repositorio
2. Navega al directorio del proyecto
3. Ejecuta `npm install` para instalar las dependencias

## Configuración

Crea un archivo `.env` en el directorio raíz y agrega los detalles de conexión de MySQL:

```
DB_HOST
DB_USER
DB_PASSWORD
DB_NAME
```

## Uso

Este proyecto utiliza scripts de npm para compilar y ejecutar:

- Para compilar el proyecto:
  ```
  npm run build
  ```

- Para ejecutar el proyecto:
  ```
  npm run start
  ```

- Para ejecutar el proyecto en modo desarrollo:
  ```
  npm run dev
  ```