CREATE TABLE ciudad (
    ciudad_id INT PRIMARY KEY ,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(100)
);

CREATE TABLE usuario (  
    usuario_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    tipo_usuario VARCHAR(100), 
    condiciones VARCHAR(100), 
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE servicio (
    servicio_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(100),
    estado VARCHAR(100)
);

CREATE TABLE empleado (
    empleado_id INT PRIMARY KEY,
    usuario_id INT,
    cargos VARCHAR(100), 
    departamentos VARCHAR(100), 
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE medioContacto (
    medio_id INT PRIMARY KEY,
    tipo_medio VARCHAR(100)
);

CREATE TABLE usuario_medioContacto (
    usuario_id INT,
    medio_id INT,
    PRIMARY KEY (usuario_id, medio_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES medioContacto(medio_id)
);

CREATE TABLE notificacion (
    notificacion_id INT PRIMARY KEY,
    usuario_id INT ,
    medio_id INT,
    mensaje VARCHAR(100),
    fecha_envio DATE,
    estado VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES medioContacto(medio_id)
);

CREATE TABLE turno (
    usuario_id INT,
    servicio_id INT,
    empleado_id INT,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(100),
    PRIMARY KEY (usuario_id, servicio_id, fecha, hora_inicio),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);