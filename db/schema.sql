CREATE TABLE PERSONA (
    documento INTEGER PRIMARY KEY,
    tipo_documento CHAR(3),
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL
);

CREATE TABLE USUARIO (
    login INTEGER PRIMARY KEY,
    clave CHAR(64) NOT NULL,
    tipo CHAR(1),
    documento INTEGER
);

CREATE TABLE PRODUCTO(
    id_producto INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    unidad_medida VARCHAR(10) NOT NULL
);

CREATE TABLE LOTE(
    id_lote INTEGER PRIMARY KEY,
    fecha_entrada DATE NOT NULL
);

CREATE TABLE PRODUCTO_LOTE (
    id_producto INTEGER,
    id_lote INTEGER,
    cantidad INTEGER NOT NULL,
    valor_unitario FLOAT NOT NULL,
    fecha_vencimiento DATE,
    PRIMARY KEY (id_producto, id_lote)
);

CREATE TABLE FACTURA (
    id_factura INTEGER PRIMARY KEY,
    fecha DATE NOT NULL,
    id_cliente INTEGER,
    id_vendedor INTEGER,
    tipo_pago VARCHAR(50) NOT NULL,
    total_pagar DECIMAL(10, 2) NOT NULL
);

CREATE TABLE DETALLE_FACTURA (
    id_factura INTEGER,
    id_producto INTEGER,
    id_lote INTEGER,
    cantidad INTEGER NOT NULL,
    iva FLOAT NOT NULL,
    subtotal FLOAT NOT NULL,
    PRIMARY KEY (id_factura, id_producto, id_lote)
);