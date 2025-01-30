/* Relación tipo 1:1 */
-- PASO 1
-- Tu código aquí

--? Relación tipo 1:1

/* ## PASO 1- Crea una tabla usuarios con:

id_usuario: tipo número, que sea una clave primaria e incremente su número.
nombre: tipo texto y no puede dejarse el campo vacío. Máximo 50 caracteres.
apellido tipo texto y no puede dejarse el campo vacío. Máximo 100 caracteres.
email: tipo texto y no puede dejarse el campo vacío. Máximo 100 caracteres.
edad: tipo número.
Añade estos valores a usuarios

INSERT INTO usuarios (nombre, apellido, email, edad) VALUES
('Juan', 'Gomez', 'juan.gomez@example.com', 28),
('Maria', 'Lopez', 'maria.lopez@example.com', 32),
('Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 25),
('Laura', 'Fernandez', 'laura.fernandez@example.com', 30),
('Pedro', 'Martinez', 'pedro.martinez@example.com', 22),
('Ana', 'Hernandez', 'ana.hernandez@example.com', 35),
('Miguel', 'Perez', 'miguel.perez@example.com', 28),
('Sofia', 'Garcia', 'sofia.garcia@example.com', 26),
('Javier', 'Diaz', 'javier.diaz@example.com', 31),
('Luis', 'Sanchez', 'luis.sanchez@example.com', 27),
('Elena', 'Moreno', 'elena.moreno@example.com', 29),
('Daniel', 'Romero', 'daniel.romero@example.com', 33),
('Paula', 'Torres', 'paula.torres@example.com', 24),
('Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', 28),
('Carmen', 'Vega', 'carmen.vega@example.com', 29),
('Adrian', 'Molina', 'adrian.molina@example.com', 34),
('Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', 26),
('Hector', 'Ortega', 'hector.ortega@example.com', 30),
('Raquel', 'Serrano', 'raquel.serrano@example.com', 32),
('Alberto', 'Reyes', 'alberto.reyes@example.com', 28);

--? CREAMOS LA TABLA USUARIOS_1 CON LAS ESPECIFICACIONES 

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY, (AUTO_INCREMENT QUE VAYA INCREMENTANDO DESDE EL 1)
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL, (VARCHAR QUE SEA EN LETRAS Y NOT NULL QUE SEA REQUERIDO)
    edad INT (INT SIGNIFICA QUE SEA EN NUMERO)
);

--? LUEGO INSERTAMOS LOS DATOS A LA TABLA usuarios_1 

INSERT INTO usuarios (nombre, apellido, email, edad) VALUES
('Juan', 'Gomez', 'juan.gomez@example.com', 28),
('Maria', 'Lopez', 'maria.lopez@example.com', 32),
('Carlos', 'Rodriguez', 'carlos.rodriguez@example.com', 25),
('Laura', 'Fernandez', 'laura.fernandez@example.com', 30),
('Pedro', 'Martinez', 'pedro.martinez@example.com', 22),
('Ana', 'Hernandez', 'ana.hernandez@example.com', 35),
('Miguel', 'Perez', 'miguel.perez@example.com', 28),
('Sofia', 'Garcia', 'sofia.garcia@example.com', 26),
('Javier', 'Diaz', 'javier.diaz@example.com', 31),
('Luis', 'Sanchez', 'luis.sanchez@example.com', 27),
('Elena', 'Moreno', 'elena.moreno@example.com', 29),
('Daniel', 'Romero', 'daniel.romero@example.com', 33),
('Paula', 'Torres', 'paula.torres@example.com', 24),
('Alejandro', 'Ruiz', 'alejandro.ruiz@example.com', 28),
('Carmen', 'Vega', 'carmen.vega@example.com', 29),
('Adrian', 'Molina', 'adrian.molina@example.com', 34),
('Isabel', 'Gutierrez', 'isabel.gutierrez@example.com', 26),
('Hector', 'Ortega', 'hector.ortega@example.com', 30),
('Raquel', 'Serrano', 'raquel.serrano@example.com', 32),
('Alberto', 'Reyes', 'alberto.reyes@example.com', 28);

Realizar consultas SQL para cada uno de los ejercicios

Seleccionar todos los usuarios y sus lenguajes asociados:

--? SELECT * FROM usuarios_1 ;

*/

-- PASO 2
-- Tu código aquí

/* Crea una tabla de roles

id_rol: tipo número, que sea una clave primaria e incremente su número.
nombre_rol: tipo texto y no puede dejarse el campo vacío. Máximo 50 caracteres.
Añade estos valores a roles

-- Insertar datos de roles
INSERT INTO roles (nombre_rol) VALUES
('Bronce'),
('Plata'),
('Oro'),
('Platino');

--? CREACION DE LA TABLA ROLES 

CREATE TABLE roles (
    id_rol INT PRIMARY KEY AUTO_INCREMENT,
    nombre_rol VARCHAR(50) NOT NULL
);

--? INSERTAMOS LOS DATOS EN LA TABLA 

INSERT INTO roles (nombre_rol) VALUES
('Bronce'),
('Plata'),
('Oro'),
('Platino');

--> id_rol como clave primaria y autoincremental.
--> nombre_rol con un límite de 50 caracteres y sin permitir valores nulos.
--> Inserta cuatro valores en la tabla roles.

*/

-- PASO 3
-- Tu código aquí

--? Crea la columna id_rol u la clave foránea

/* 

Añade la columna id_rol a usuarios_1. Rellena cada rol con números asociados a la tabla de roles

Crea la clave foránea (FOREIGN)

ALTER TABLE usuarios ADD FOREIGN KEY (id_rol) REFERENCES roles(id_rol);
*** EXPLICACIÓN *** La clave foránea es una herramienta clave en las bases de datos 
relacionales para mantener la integridad referencial entre las tablas. Al establecer una clave foránea, 
se garantiza que los valores en la columna referenciada (en este caso, id_rol en la tabla usuarios) 
existan en la tabla referenciada (roles). Esto evita situaciones donde podrías tener usuarios 
con roles que no existen en la tabla de roles.

Si decides no utilizar una clave foránea y aún así intentas establecer una 
relación 1:1, estarías dejando de lado las garantías de integridad referencial y 
podrías enfrentar problemas de consistencia de datos. Por ejemplo, podrías tener usuarios 
con roles que no existen o roles sin usuarios asociados.

--? Agregar la columna id_rol a usuarios_1

ALTER TABLE usuarios_1 ADD COLUMN id_rol INT;

--? Establecer la clave foránea 

ALTER TABLE usuarios_1 ADD CONSTRAINT fk_id_rol 
FOREIGN KEY (id_rol) REFERENCES roles(id_rol);

*/

-- PASO 4
-- Tu código aquí

/* 

## PASO 4 JOIN

Haz un JOIN que saque usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol de las dos tablas

Relación tipo 1:N (Uno a varios)
## PASO 1- Crea una tabla categorias con:

id_categoria: tipo número, que sea una clave primaria e incremente su número.
nombre_categoría: tipo texto y no puede dejarse el campo vacío. Máximo 100 caracteres.
Añade estos datos a categorías

-- Insertar datos de categorías
INSERT INTO categorias (nombre_categoria) VALUES
('Electrónicos'),
('Ropa y Accesorios'),
('Libros'),
('Hogar y Cocina'),
('Deportes y aire libre'),
('Salud y cuidado personal'),
('Herramientas y mejoras para el hogar'),
('Juguetes y juegos'),
('Automotriz'),
('Música y Películas');

--? JOIN ENTRE USUARIOS_1 Y ROLES

CONSULTA JOIN

SELECT 
    usuarios_1.id_usuario, 
    usuarios_1.nombre, 
    usuarios_1.apellido, 
    usuarios_1.email, 
    usuarios_1.edad, 
    roles.nombre_rol 
FROM usuarios_1
JOIN roles ON usuarios_1.id_rol = roles.id_rol;

*/


/* Relación tipo 1:N */
-- PASO 1
-- Tu código aquí

/*

Crea una tabla categorias con:

id_categoria: tipo número, que sea una clave primaria e incremente su número.
nombre_categoría: tipo texto y no puede dejarse el campo vacío. Máximo 100 caracteres.
Añade estos datos a categorías

-- Insertar datos de categorías
INSERT INTO categorias (nombre_categoria) VALUES
('Electrónicos'),
('Ropa y Accesorios'),
('Libros'),
('Hogar y Cocina'),
('Deportes y aire libre'),
('Salud y cuidado personal'),
('Herramientas y mejoras para el hogar'),
('Juguetes y juegos'),
('Automotriz'),
('Música y Películas');

--? CREAR LA TABLA CATEGORIAS 

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL
);

--? INSERTAR LOS DATOS EN CATEGORIAS 

INSERT INTO categorias (nombre_categoria) VALUES
('Electrónicos'),
('Ropa y Accesorios'),
('Libros'),
('Hogar y Cocina'),
('Deportes y aire libre'),
('Salud y cuidado personal'),
('Herramientas y mejoras para el hogar'),
('Juguetes y juegos'),
('Automotriz'),
('Música y Películas');


*/


-- PASO 2
-- Tu código aquí

/*

Añade a la tabla usuarios la columna id_categoria 
La columna debe ser tipo número

--? AGREGAR LA COLUMNA ID_CATEGORIA

ALTER TABLE usuarios_1 ADD COLUMN id_categoria INT;

*/

-- PASO 3
-- Tu código aquí

/*

Añade categorías a varios usuarios Podría ser algo así:

-- Asignar categorías a usuarios específicos
UPDATE usuarios SET id_categoria = 1 WHERE id_usuario IN (1, 5, 9, 13, 17);

--? AIGNAR CATEGORIAS A USUARIOS ESPECIFICOS

UPDATE usuarios_1 
SET id_categoria = 1 
WHERE id_usuario IN (1, 5, 9, 13, 17);

WHERE id_usuario IN (1, 5, 9, 13, 17): Esto indica que solo se 
actualicen los usuarios con los id_usuario específicos 
(en este caso, 1, 5, 9, 13, 17).

*/

-- PASO 4
-- Tu código aquí

/*

PASO - 4 Realiza cuna consulta para ver la unión de usuarios, roles y categorías
Haz un JOIN que saque usuarios.id_usuario, usuarios.nombre, usuarios.apellido, 
usuarios.email, usuarios.edad, roles.nombre_rol, categorias.nombre_categoria

--? Consulta JOIN entre usuarios_1, roles y categorias

SELECT 
    usuarios_1.id_usuario, 
    usuarios_1.nombre, 
    usuarios_1.apellido, 
    usuarios_1.email, 
    usuarios_1.edad, 
    roles.nombre_rol, 
    categorias.nombre_categoria 
FROM usuarios_1
JOIN roles ON usuarios_1.id_rol = roles.id_rol
JOIN categorias ON usuarios_1.id_categoria = categorias.id_categoria;

*/

/* Relación tipo N:M */
-- PASO 1
-- Tu código aquí

/*

Relación tipo N:M (muchos a muchos)
## PASO 1 - Crea una tabla intermedia llamada usuarios_categorias con:

id_usuario_categoria: tipo número, que sea una clave primaria e incremente su número.
id_usuario: tipo número.
id_categoría: tipo número.
Añadiremos dentro de la creación de la tabla intermedia dos claves foráneas.

Una que haga referencia el id_usaurio de la tabla intermedia con el id_usuario de usuarios
Una que haga referencia el id_categoría de la tabla intermedia con el id_categoria de categorías
Podría ser algo como esto:

FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
--- Crea tú la otra

--? Crear la tabla intermedia usuarios_categorias

CREATE TABLE usuarios_categorias (
    id_usuario_categoria INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_categoria INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios_1(id_usuario),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

*/


-- PASO 2
-- Tu código aquí

/* 

PASO 2 - Asocia usuarios a categorías
INSERT INTO usuarios_categorias (id_usuario, id_categoria) VALUES
(1, 1), (1, 2), (1, 3),
(2, 4), (2, 5),
(3, 6), (3, 7),
(4, 8), (4, 9), (4, 10),

--? Consulta SQL para asociar usuarios a categorías

INSERT INTO usuarios_categorias (id_usuario, id_categoria) VALUES
(1, 1), (1, 2), (1, 3), el usuario 1 está asociado a las categorías 1, 2 y 3.
(2, 4), (2, 5), usuario 2 esta asociado a las categorias 4 y 5.
(3, 6), (3, 7), aqui al 6 y 7
(4, 8), (4, 9), (4, 10), 8, 9, 10
(5, 1), (5, 4),
(6, 2), (6, 6),
(7, 3), (7, 9);

*/

-- PASO 3
-- Tu código aquí

/* 

PASO 3 - Consulta para ver la unión de usuarios, roles, categorías
Haz un JOIN que saque usuarios.id_usuario, usuarios.nombre, usuarios.apellido, 
usuarios.email, usuarios.edad, roles.nombre_rol, categorias.nombre_categoria

--? Consulta JOIN para unir usuarios, roles y categorías

SELECT 
    usuarios_1.id_usuario, 
    usuarios_1.nombre, 
    usuarios_1.apellido, 
    usuarios_1.email, 
    usuarios_1.edad, 
    roles.nombre_rol, 
    categorias.nombre_categoria 
FROM usuarios_1
JOIN roles ON usuarios_1.id_rol = roles.id_rol
JOIN usuarios_categorias ON usuarios_1.id_usuario = usuarios_categorias.id_usuario
JOIN categorias ON usuarios_categorias.id_categoria = categorias.id_categoria;


*/
