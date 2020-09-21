-- 1.- Crear Base de datos posts 
CREATE DATABASE posts;

-- 2.- Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido
CREATE TABLE post(id SERIAL, usuario VARCHAR(50), fecha_creacion TIMESTAMP, contenido VARCHAR(140), descripcion VARCHAR(80));

-- 3.- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" 
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', current_timestamp, 'Contenido 1', 'Descripcion 1');
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', current_timestamp, 'Contenido 2', 'Descripcion 2');
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion) VALUES ('Carlos', current_timestamp, 'Contenido 1', 'Descripcion 1');

-- 4.- Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD titulo VARCHAR(30);

-- 5. Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo = 'Titulo 1' WHERE id = 1;
UPDATE post SET titulo = 'Titulo 2' WHERE id = 2;
UPDATE post SET titulo = 'Titulo 1' WHERE id = 3;

-- 6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', current_timestamp, 'Contenido 1', 'Descripcion 1', 'titulo 1');
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', current_timestamp, 'Contenido 2', 'Descripcion 2', 'titulo 2');

-- 7. Eliminar el post de Carlos
DELETE FROM post WHERE usuario = 'Carlos';

-- 8. Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post(usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Carlos', current_timestamp, 'nuevo contenido', 'nueva descripcion', 'titulo');

