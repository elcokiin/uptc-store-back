import express from 'express'

const app = express()

app.use((err: any, req: express.Request, res: express.Response, next: express.NextFunction) => {
    console.error(err.stack)
    res.status(500).send('Something broke!')  
})

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(3000, () => {
  console.log('Server is running on http://localhost:3000')
})