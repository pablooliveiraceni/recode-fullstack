import express from 'express';
import cors from 'cors';
import mysql from 'mysql';

const server = express();

server.use(express.json());
server.use(cors());

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "yuyuhakusho",
    database: "fullstackeletro"
})

server.get('/produtos', (req, res) => {
    const sql = "SELECT * FROM produto JOIN categorias ON produto.fk_categoria = categorias.id";

    connection.query(sql, (error, result) => {
        if(result){
            res.status(201).json(result)
        } else {
            res.json({
                "message": "Erro na conexão com o banco de dados"
            })
        }
    })
})

server.get('/contato', (req, res) => {
    const sql = "SELECT * FROM comentario"
    connection.query(sql, (error, result) => {
        if (result) {
            res.status(201).json(result)
        } else {
            res.json({
                "message": "Erro na conexão com o banco de dados"
            })
        }
    })
})

server.post('/contato', (req, res) => {
    const {nome, msg} = req.body
    const sql = `INSERT INTO comentario(nome, msg) values ('${nome}', '${msg}')`
    connection.query(sql, (error, result) => {
        if (result) {
            res.status(201).json(result)
        } else {
            res.json({
                "message": "Erro na conexão com o banco de dados!"
            })
        }
    })
})

server.listen(3333)