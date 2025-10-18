INSERT INTO ciudad(ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050015'),
(3, 'Cali', '760042'),
(4, 'Barranquilla', '080020'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680011'),
(7, 'Pereira', '660001'),
(8, 'Cúcuta', '540006'),
(9, 'Manizales', '170001'),
(10, 'Santa Marta', '470004');

INSERT INTO usuario(usuario_id, nombre, apellido, tipo_usuario, condiciones, ciudad_id) VALUES
-- Clientes
(1, 'Juan', 'Pérez', 'cliente', 'adulto mayor', 1),
(2, 'Ana', 'López', 'cliente', 'embarazo', 1),
(3, 'Luis', 'Martínez', 'cliente', NULL, 4),
(4, 'Laura', 'Ramírez', 'cliente', 'embarazo', 3),
(5, 'Camila', 'Vargas', 'cliente', 'silla de ruedas', 5),
(6, 'Andrés', 'Gómez', 'cliente', NULL, 2),
(7, 'Valeria', 'Rojas', 'cliente', 'adulto mayor', 6),
(8, 'Felipe', 'Castro', 'cliente', NULL, 7),
(9, 'Isabella', 'Moreno', 'cliente', 'embarazo', 8),
(10, 'Santiago', 'Díaz', 'cliente', NULL, 9),
-- Empleados
(11, 'María', 'Gómez', 'empleado', NULL, 2),
(12, 'Sofía', 'Hernández', 'empleado', 'adulto mayor', 2),
(13, 'Diego', 'Torres', 'empleado', NULL, 4),
(14, 'Paula', 'Sánchez', 'empleado', NULL, 3),
(15, 'Gabriel', 'Ruiz', 'empleado', NULL, 5),
(16, 'Elena', 'Molina', 'empleado', NULL, 6),
(17, 'Miguel', 'Ortega', 'empleado', NULL, 7),
(18, 'Carolina', 'Vega', 'empleado', NULL, 8),
(19, 'Javier', 'Ríos', 'empleado', NULL, 9),
(20, 'Lucía', 'Cruz', 'empleado', NULL, 10),
-- Proveedores
(21, 'Carlos', 'Rodríguez', 'proveedor', 'silla de ruedas', 3),
(22, 'Pedro', 'García', 'proveedor', NULL, 5),
(23, 'Mónica', 'Fernández', 'proveedor', NULL, 6),
(24, 'Julián', 'Ortiz', 'proveedor', NULL, 7),
(25, 'Clara', 'Mendoza', 'proveedor', NULL, 10);

INSERT INTO servicio(servicio_id, nombre, descripcion, estado) VALUES
(1, 'Despacho', 'Envío de productos al cliente', 'activo'),
(2, 'Atención al cliente', 'Resolución de consultas', 'activo'),
(3, 'Entrega de artículos', 'Entrega de pedidos en punto', 'activo'),
(4, 'Consultoría', 'Asesoría personalizada', 'activo'),
(5, 'Recepción de artículos', 'Recepción de mercancía', 'activo'),
(6, 'Soporte técnico', 'Asistencia técnica', 'activo'),
(7, 'Devoluciones', 'Gestión de devoluciones', 'activo'),
(8, 'Capacitación', 'Cursos y talleres', 'activo'),
(9, 'Mantenimiento', 'Mantenimiento de equipos', 'inactivo'),
(10, 'Facturación', 'Gestión de facturas', 'activo');

INSERT INTO empleado(empleado_id, usuario_id, cargos, departamentos) VALUES
(1, 11, 'Recepcionista', 'Atención al cliente'),
(2, 12, 'Consultor', 'Consultoría'),
(3, 13, 'Asistente', 'Ventas'),
(4, 14, 'Técnico', 'Soporte técnico'),
(5, 15, 'Coordinador', 'Logística'),
(6, 16, 'Analista', 'Facturación'),
(7, 17, 'Asesor', 'Atención al cliente'),
(8, 18, 'Supervisor', 'Mantenimiento'),
(9, 19, 'Operador', 'Despacho'),
(10, 20, 'Gerente', 'Administración');

INSERT INTO medioContacto(medio_id, tipo_medio) VALUES
(1, 'correo'),
(2, 'telefono'),
(3, 'sms'),
(4, 'whatsapp'),
(5, 'telegram'),
(6, 'fax'),
(7, 'app_notificacion'),
(8, 'mensaje_voz'),
(9, 'correo_certificado'),
(10, 'chat_web');

INSERT INTO usuario_medioContacto(usuario_id, medio_id) VALUES
(1, 1), -- Juan (cliente): correo
(1, 2), -- Juan (cliente): telefono
(2, 3), -- Ana (cliente): sms
(2, 4), -- Ana (cliente): whatsapp
(3, 2), -- Luis (cliente): telefono
(11, 1), -- María (empleado): correo
(11, 5), -- María (empleado): telegram
(12, 4), -- Sofía (empleado): whatsapp
(21, 1), -- Carlos (proveedor): correo
(21, 3); -- Carlos (proveedor): sms

INSERT INTO notificacion(notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 1, 'Bienvenido al sistema', '2025-10-01', 'enviado'), 
(2, 1, 2, 'Bienvenido al sistema', '2025-10-01', 'enviado'), 
(3, 2, 3, 'Bienvenido al sistema', '2025-10-02', 'pendiente'),
(4, 2, 4, 'Bienvenido al sistema', '2025-10-02', 'pendiente'),
(5, 3, 2, 'Bienvenido al sistema', '2025-10-03', 'enviado'), 
(6, 11, 1, 'Bienvenido al sistema', '2025-10-04', 'enviado'), 
(7, 11, 5, 'Bienvenido al sistema', '2025-10-04', 'enviado'), 
(8, 12, 4, 'Bienvenido al sistema', '2025-10-05', 'fallido'), 
(9, 21, 1, 'Bienvenido al sistema', '2025-10-06', 'enviado'), 
(10, 21, 3, 'Bienvenido al sistema', '2025-10-06', 'enviado');


INSERT INTO turno(usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, '2025-10-20', '09:00:00', '09:30:00', 'pendiente'),
(2, 2, 2, '2025-10-20', '10:00:00', '10:30:00', 'pendiente'),
(3, 3, 3, '2025-10-21', '11:00:00', '11:30:00', 'cancelado'),
(4, 4, 4, '2025-10-21', '14:00:00', '14:30:00', 'pendiente'),
(5, 5, 5, '2025-10-22', '15:00:00', '15:30:00', 'pendiente'),
(21, 6, 6, '2025-10-22', '16:00:00', '16:30:00', 'pendiente'),
(22, 7, 7, '2025-10-23', '09:00:00', '09:30:00', 'pendiente'),
(23, 8, 8, '2025-10-23', '10:00:00', '10:30:00', 'pendiente'),
(24, 9, 9, '2025-10-24', '11:00:00', '11:30:00', 'cancelado'),
(25, 10, 10, '2025-10-24', '14:00:00', '14:30:00', 'pendiente');