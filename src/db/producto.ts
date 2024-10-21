import { connection } from "./db.js";

export type TypeProducto = {
    id_producto: number;
    nombre: string;
    unidadMedida: string;
}

export type TypeProductoLote = {
    id_lote: number;
    id_producto: number;
    cantidad: number;
    fecha_vencimiento: string;
}

export const getProductByName = async (nombre: string): Promise<TypeProducto> => {
    const result = await connection.query('SELECT * FROM PRODUCTO WHERE nombre = ?', [nombre]);
    return result[0] as unknown as TypeProducto;
}

export const getProduct = async (id_producto: number): Promise<TypeProducto> => {
    const result = await connection.query('SELECT * FROM PRODUCTO WHERE id_producto = ?', [id_producto]);
    return result[0] as unknown as TypeProducto;
}

export const getProducts = async (): Promise<TypeProducto[]> => {
    const result = await connection.query('SELECT * FROM PRODUCTO');
    return result[0] as unknown as TypeProducto[];
}

export const getLoteByProduct = async (id_producto: number): Promise<TypeProductoLote> => {
    const result = await connection.query('SELECT * FROM PRODUCTO_LOTE WHERE id_producto = ?', [id_producto]);
    return result[0] as unknown as TypeProductoLote;
}

export const getLotesByProduct = async (id_producto: number): Promise<TypeProductoLote[]> => {
    const result = await connection.query('SELECT * FROM PRODUCTO_LOTE WHERE id_producto = ?', [id_producto]);
    return result[0] as unknown as TypeProductoLote[];
}

export const modifyProductLote = async (id_lote: number, cantidad: number): Promise<void> => {
    await connection.query('UPDATE PRODUCTO_LOTE SET cantidad = ? WHERE id_lote = ?', [cantidad, id_lote]);
}

