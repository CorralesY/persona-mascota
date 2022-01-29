const express = require('express')
const mysql = require('mysql')
const myconn = require('express-myconnection')

const routes = require('./routes/routes')

const app = express()
app.set('port', process.env.PORT || 4000)
const dbOptions = {
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'personas-mascotas'
}

//
app.use(myconn(mysql, dbOptions, 'single'))
app.use(express.json())

// rutas
app.get('/', (req, res)=>{
    res.send('Desde el API')
})
app.use('/api', routes)

// servidor
app.listen(app.get('port'), ()=>{
    console.log('Servidor Iniciado en el Puerto', app.get('port'))
})