'user strict'

var mysql = require('mysql2');

var connection = mysql.createConnection({
    host:'filmesapi-mysql',
    user: 'root',
    password: '12345678',
    database: "Filmes"
});

connection.connect(function(err){
    if(err){
        console.log('Error on database connection');
        throw err;
    }

    console.log('Database connection active.');
});

module.exports = connection;
