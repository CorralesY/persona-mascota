const express = require('express')
const routes = express.Router()

routes.get('/', (req, res)=>{
    req.getConnection((err, conn)=>{
        if(err) return res.send(err)

        conn.query('SELECT * FROM personamascota', (err, rows)=>{
            if(err) return res.send(err)

            res.json(rows)
        })
    })
})

routes.get('/:nombre', (req, res)=>{
    req.getConnection((err, conn)=>{
        if(err) return res.send(err)

        conn.query('SELECT * FROM personamascota WHERE nombrePersona = ?', [req.params.nombre], (err, rows)=>{
            if(err) return res.send(err)

            res.json(rows)
        })
    })
})



routes.post('/', (req, res)=>{
    req.getConnection((err, conn)=>{
        if(err) return res.send(err)
        conn.query('INSERT INTO personamascota set ?', [req.body], (err, rows)=>{
            //if(err) return res.send(err)

            res.send('Insertado!')
        })
    })
})



module.exports = routes