import express from 'express'
import { getPersona, getPersonas, createPersona } from './db/persona.js'
import { getProductByName, getProduct, getProducts, getLoteByProduct, getLotesByProduct, modifyProductLote } from './db/producto.js'

const app = express()

app.use((err: any, req: express.Request, res: express.Response, next: express.NextFunction) => {
    console.error(err.stack)
    res.status(500).send('Something broke!')  
})

app.get('/personas', async (req, res) => {
  const personas = await getPersonas()
  res.send(personas)
})

app.get('/personas/:id', async (req, res) => {
  const id: number = parseInt(req.params.id)
  const personas = await getPersona(id)
  res.send(personas)
})

app.post('/personas', async (req, res) => {
  const persona = req.body
  const newPersona = await createPersona(persona)
  res.send(newPersona)
})

app.get('/productos', async (req, res) => {
  const productos = await getProducts()
  res.send(productos)
})

app.get('/productos/:nombre', async (req, res) => {
  const nombre: string = req.params.nombre
  const producto = await getProductByName(nombre)
  res.send(producto)
})

app.get('/productos/:id_producto', async (req, res) => {
  const id_producto: number = parseInt(req.params.id_producto)
  const producto = await getProduct(id_producto)
  res.send(producto)
})

app.get('/productos/:id_producto/lote', async (req, res) => {
  const id_producto: number = parseInt(req.params.id_producto)
  const lote = await getLoteByProduct(id_producto)
  res.send(lote)
})

app.get('/productos/:id_producto/lotes', async (req, res) => {
  const id_producto: number = parseInt(req.params.id_producto)
  const lotes = await getLotesByProduct(id_producto)
  res.send(lotes)
})

app.put('/productos/:id_lote', async (req, res) => {
  const id_lote: number = parseInt(req.params.id_lote)
  const cantidad: number = req.body.cantidad
  await modifyProductLote(id_lote, cantidad)
  res.send('Lote updated')
})

app.listen(3000, () => {
  console.log('Server is running on http://localhost:3000')
})