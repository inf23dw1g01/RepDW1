'user strict'

var mysql = require('mysql');

var connection = mysql.createConnection({
    host:'db',
    user: 'root',
    password: 'secret',
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