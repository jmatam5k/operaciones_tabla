-- ** Parte 1 **

-- 1.- Crear Base de datos posts 
CREATE DATABASE posts;

-- 2.- Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido
CREATE TABLE post(id INT, usuario VARCHAR(50), fecha_creacion TIMESTAMP, contenido VARCHAR(140), descripcion VARCHAR(80));

-- 3.- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos" 
INSERT INTO post(id, usuario, fecha_creacion, contenido, descripcion) VALUES (1, 'Pamela', current_timestamp, 'Contenido 1', 'Descripcion 1');
INSERT INTO post(id, usuario, fecha_creacion, contenido, descripcion) VALUES (2, 'Pamela', current_timestamp, 'Contenido 2', 'Descripcion 2');
INSERT INTO post(id, usuario, fecha_creacion, contenido, descripcion) VALUES (3, 'Carlos', current_timestamp, 'Contenido 1', 'Descripcion 1');

-- 4.- Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD titulo VARCHAR(30);

-- 5. Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo = 'Titulo 1' WHERE id = 1;
UPDATE post SET titulo = 'Titulo 2' WHERE id = 2;
UPDATE post SET titulo = 'Titulo 1' WHERE id = 3;

-- 6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post(id, usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (4, 'Pedro', current_timestamp, 'Contenido 1', 'Descripcion 1', 'titulo 1');
INSERT INTO post(id, usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (5, 'Pedro', current_timestamp, 'Contenido 2', 'Descripcion 2', 'titulo 2');

-- 7. Eliminar el post de Carlos
DELETE FROM post WHERE usuario = 'Carlos';

-- 8. Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post(id, usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (6, 'Carlos', current_timestamp, 'nuevo contenido', 'nueva descripcion', 'titulo');

-- ** Parte 2 **

-- 9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,
-- contenido, que se relacione con la tabla posts.
ALTER TABLE post ADD PRIMARY KEY (id);
CREATE TABLE comentarios(id SERIAL, fecha_creacion TIMESTAMP, contenido VARCHAR(80), id_post INT, FOREIGN KEY (id_post) REFERENCES post(id));

-- 10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" 
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 1 Pamela', 1);
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 2 Pamela', 2);
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 1 Carlos', 6);

-- 11. Crear un nuevo post para "Margarita" 
INSERT INTO post(id, usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (7, 'Margarita', current_timestamp, 'contenido 1', 'descripcion 1', 'titulo 1');

-- 12. Ingresar 5 comentarios para el post de Margarita
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 1 Margarita', 7);
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 2 Margarita', 7);
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 3 Margarita', 7);
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 4 Margarita', 7);
INSERT INTO comentarios(fecha_creacion, contenido, id_post) VALUES(current_timestamp, 'Contenido 5 Margarita', 7);



