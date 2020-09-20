-- Crear Base de datos posts 
CREATE DATABASE posts;

--  Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido
CREATE TABLE post(id SERIAL, usuario VARCHAR(50), fecha_creacion TIMESTAMP, contenido VARCHAR(140), descripcion VARCHAR(80));

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" 
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', current_timestamp, 'Contenido 1', 'Descripcion 1');
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', current_timestamp, 'Contenido 2', 'Descripcion 2');
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion) VALUES ('Carlos', current_timestamp, 'Contenido 1', 'Descripcion 1');