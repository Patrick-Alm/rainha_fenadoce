import express from 'express'
const app = express()
// const port = 3000
const port = process.env.PORT ?? 3000

import candidatasRoutes from './routes/candidatas'
import clientessRoutes from './routes/clientes'
import votosRoutes from './routes/votos'

app.use(express.json())
app.use("/candidatas", candidatasRoutes)
app.use("/clientes", clientessRoutes)
app.use("/votos", votosRoutes)

app.get('/', (req, res) => {
  res.send('API: Fenadoce')
})

app.listen(port, () => {
  console.log(`Servidor rodando na porta: ${port}`)
})