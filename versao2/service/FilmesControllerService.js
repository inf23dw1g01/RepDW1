'use strict';

var sql = require('../utils/dbFilmes.js');


/**
 * Create Filme
 *
 * body Filme  (optional)
 * returns Filme
 **/
exports.createFilme = function(body) {
  return new Promise(function(resolve, reject) {
    console.log(body);
    sql.query("INSERT INTO Filme (name, description,ano) Values (?,?,?)",[body.name,body.description,body.ano],function(err,res){
      if(err){
        console.log(err);
        reject(err);
      }
      else {
        console.log(res.insertId);
        resolve(res.insertId);
      }
    });
  });
}


/**
 * Delete Filme
 *
 * id Long 
 * no response value expected for this operation
 **/
exports.deleteFilme = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("DELETE FROM Filme WHERE id = ?",[id], function (err,res){
      if (err|| !res.affectedRows){
        console.log(err);
        console.log(res);
      }
      else{
        console.log(res);
        resolve({"deleted":id});
      }
    });
  });
}


/**
 * Retrieve filme
 *
 * id Long 
 * returns Filme
 **/
exports.retrieveFilme = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Filme WHERE id = ?",[id], function(err,res){
      if(err){
        console.log(err);
        reject(err);
      }
      else{
        console.log(res);
        resolve(res[0]);
      }
    });
  });
}


/**
 * Retrieve Filmes
 *
 * returns List
 **/
exports.retrieveFilmes = function() {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Filme",function(err,res){
      if(err){
        console.log(err);
        reject(err);
      }
      else{
        console.log(res);
        resolve(res);
      }
    });
  });
}


/**
 * Update Filme
 *
 * body Filme 
 * id Long 
 * no response value expected for this operation
 **/
exports.updateFilme = function(body,id) {
  return new Promise(function(resolve, reject) {
    sql.query("UPDATE Filme set name = ?, description = ? WHERE id = ?", [body.name,body.description, id],function(err,res){
      if(err){
        console.log(err);
        reject(err);
      }
      else{
        console.log(res);
        resolve(id);
      }
    });
  });
}

