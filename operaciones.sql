-- Crear Base de datos posts 
CREATE DATABASE posts;

--  Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido
CREATE TABLE post(id SERIAL, usuario VARCHAR(50), fecha_creacion TIMESTAMP, contenido VARCHAR(140), descripcion VARCHAR(80));


