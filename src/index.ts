import express from 'express'
import { getPersona, getPersonas, createPersona } from './db/persona'

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

app.listen(3000, () => {
  console.log('Server is running on http://localhost:3000')
})