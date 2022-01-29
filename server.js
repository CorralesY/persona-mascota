const express = require('express')
const mysql = require('mysql')
const myconn = require('express-myconnection')
const cors = require('cors');

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

// Configurar cabeceras y cors
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});
// rutas
app.get('/', (req, res)=>{
    res.send('Desde el API')
})
app.use('/api', routes)

// servidor
app.listen(app.get('port'), ()=>{
    console.log('Servidor Iniciado en el Puerto', app.get('port'))
})