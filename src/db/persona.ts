import { connection } from './db'

export type TypePersona = {
    documento: number
    tipo_documento: string
    nombres: string
    apellidos: string
}

// Get all personas
export async function getPersonas(): Promise<TypePersona[]> {
  const [rows] = await connection.execute('SELECT * FROM PERSONA')
  return rows as TypePersona[]
}

// Get a persona by id
export async function getPersona(id: number): Promise<TypePersona> {
  const [rows]: [any, any] = await connection.execute('SELECT * FROM PERSONA WHERE ID = ?', [id])
  return rows[0]
}

// Create a new persona
export async function createPersona(persona: TypePersona): Promise<TypePersona> {
  const [result]: any = await connection.execute(
    `INSERT INTO PERSONA 
        (DOCUMENTO, TIPO_DOCUMENTO, NOMBRES, APELLIDOS) 
        VALUES (?, ?, ?, ?)`, 
        [persona.documento, persona.tipo_documento, persona.nombres, persona.apellidos]
    )
    
    return getPersona(result.insertId)
}