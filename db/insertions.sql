-- burning data in the database for practical purposes
INSERT INTO PRODUCTO (id_producto, nombre, unidad_medida) VALUES
(1, 'Leche', 'lt'),
(2, 'Pan', 'unit'),
(3, 'Azúcar', 'kg'),
(4, 'Aceite', 'lt'),
(5, 'Sal', 'kg'),
(6, 'Yogur', 'unit'),
(7, 'Huevos', 'unit'),
(8, 'Harina', 'kg'),
(9, 'Arroz', 'kg'),
(10, 'Pasta', 'kg'),
(11, 'Tomate', 'kg'),
(12, 'Cebolla', 'kg'),
(13, 'Pimiento', 'kg'),
(14, 'Carne', 'kg'),
(15, 'Pescado', 'kg'),
(16, 'Pollo', 'kg'),
(17, 'Cerdo', 'kg'),
(18, 'Ternera', 'kg'),
(19, 'Cordero', 'kg'),
(20, 'Cerveza', 'lt'),
(21, 'Vino', 'lt'),
(22, 'Refresco', 'lt'),
(23, 'Agua', 'lt'),
(24, 'Zumo', 'lt'),
(25, 'Café', 'g'),
(26, 'Té', 'g'),
(27, 'Chocolate', 'g'),
(28, 'Galletas', 'g'),
(29, 'Bizcocho', 'g'),
(30, 'Helado', 'lt');

-- ALTER TABLE PERSONA
-- ADD (
--     CONSTRAINT check_tipo_documento CHECK (tipo_documento IN ('CC', 'TI', 'CE')),
--     CONSTRAINT check_nombres CHECK (nombres <> ''),
--     CONSTRAINT check_apellidos CHECK (apellidos <> '')
-- );
-- CREATE TABLE PERSONA (
--     documento INTEGER PRIMARY KEY,
--     tipo_documento CHAR(3),
--     nombres VARCHAR(50) NOT NULL,
--     apellidos VARCHAR(50) NOT NULL, 
--     email_persona VARCHAR(100) NOT NULL,
--     direccion_persona VARCHAR(50) NOT NULL,
--     telefono_persona VARCHAR(30) NOT NULL
-- );
-- ADD 10 PERSONAS
INSERT INTO PERSONA (documento, tipo_documento, nombres, apellidos, email_persona, direccion_persona, telefono_persona) VALUES
(1, 'CC', 'Juan', 'Pérez', 'juan.perez@corre.com', 'Calle 1', '1234567890'),
(2, 'CC', 'Pedro', 'Gómez', 'pedro.gomez@correo.com', 'Calle 2', '1234567890'),
(3, 'CC', 'María', 'García', 'algo.com', 'Calle 3', '1234567890'),
(4, 'CC', 'Luis', 'Martínez', 'noce.com', 'Calle 4', '1234567890'),
(5, 'CC', 'Ana', 'Rodríguez', 'algo.com', 'Calle 5', '1234567890'),
(6, 'CC', 'Carlos', 'Hernández', 'noce.com', 'Calle 6', '1234567890'),
(7, 'CC', 'Sofía', 'López', 'algo.com', 'Calle 7', '1234567890'),
(8, 'CC', 'Jorge', 'Torres', 'noce.com', 'Calle 8', '1234567890'),
(9, 'CC', 'Laura', 'Sánchez', 'algo.com', 'Calle 9', '1234567890'),
(10, 'CC', 'Marta', 'Ramírez', 'noce.com', 'Calle 10', '1234567890');

INSERT INTO LOTE (id_lote, fecha_entrada) VALUES
(1, '2021-01-01'),
(2, '2021-01-02'),
(3, '2021-01-03'),
(4, '2021-01-04'),
(5, '2021-01-05'),
(6, '2021-01-06'),
(7, '2021-01-07'),
(8, '2021-01-08'),
(9, '2021-01-09'),
(10, '2021-01-10');

INSERT INTO PRODUCTO_LOTE (id_producto, id_lote, cantidad, valor_unitario, fecha_vencimiento) VALUES
(1, 1, 100, 2000, '2021-01-01'),
(2, 2, 100, 1000, '2021-01-02'),
(3, 3, 100, 500, '2021-01-03'),
(4, 4, 100, 3000, '2021-01-04'),
(5, 5, 100, 1000, '2021-01-05'),
(6, 6, 100, 2000, '2021-01-06'),
(7, 7, 100, 1000, '2021-01-07'),
(8, 8, 100, 500, '2021-01-08'),
(9, 9, 100, 3000, '2021-01-09'),
(1, 10, 100, 1000, '2021-01-10'),
(1, 2, 100, 2000, '2021-01-01'),
(2, 3, 100, 1000, '2021-01-02'),
(3, 4, 100, 500, '2021-01-03'),
(4, 5, 100, 3000, '2021-01-04'),
(5, 6, 100, 1000, '2021-01-05'),
(6, 7, 100, 2000, '2021-01-06'),
(7, 8, 100, 1000, '2021-01-07'),
(8, 9, 100, 500, '2021-01-08'),
(9, 10, 100, 3000, '2021-01-09'),
(10, 1, 100, 1000, '2021-01-10');