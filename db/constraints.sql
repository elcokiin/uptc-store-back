ALTER TABLE PERSONA
ADD (
    CONSTRAINT check_tipo_documento CHECK (tipo_documento IN ('CC', 'TI', 'CE')),
    CONSTRAINT check_nombres CHECK (nombres <> ''),
    CONSTRAINT check_apellidos CHECK (apellidos <> '')
);

ALTER TABLE USUARIO
ADD (
    CONSTRAINT check_tipo_usuario CHECK (tipo IN ('A', 'U','C')),
    CONSTRAINT fk_documento FOREIGN KEY (documento) REFERENCES PERSONA(documento)
);

ALTER TABLE PRODUCTO
ADD (
    CONSTRAINT check_nombre_producto CHECK (nombre <> ''),
    CONSTRAINT check_unidad_medida CHECK (unidad_medida IN ('kg', 'g', 'lt', 'ml', 'unit'))
);

ALTER TABLE PRODUCTO_LOTE
ADD (
    CONSTRAINT check_cantidad_producto_lote CHECK (cantidad > 0),
    CONSTRAINT check_valor_unitario CHECK (valor_unitario >= 0),
    CONSTRAINT fk_producto FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto),
    CONSTRAINT fk_lote FOREIGN KEY (id_lote) REFERENCES LOTE(id_lote)
);

ALTER TABLE FACTURA
ADD (
    CONSTRAINT check_tipo_pago CHECK (tipo_pago IN ('Efectivo', 'Tarjeta', 'Transferencia')),
    CONSTRAINT check_total_pagar CHECK (total_pagar > 0),
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES PERSONA(documento),
    CONSTRAINT fk_vendedor FOREIGN KEY (id_vendedor) REFERENCES PERSONA(documento)
);

ALTER TABLE DETALLE_FACTURA
ADD (
    CONSTRAINT check_cantidad_detalle_factura CHECK (cantidad > 0),
    CONSTRAINT check_iva CHECK (iva >= 0 AND iva <= 100),
    CONSTRAINT check_descuento CHECK (descuento >= 0 AND descuento <= 100),
    CONSTRAINT check_subtotal CHECK (subtotal >= 0),
    CONSTRAINT fk_factura FOREIGN KEY (id_factura) REFERENCES FACTURA(id_factura),
    CONSTRAINT fk_producto_detalle FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto),
    CONSTRAINT fk_lote_detalle FOREIGN KEY (id_lote) REFERENCES LOTE(id_lote)
);

COMMIT;
