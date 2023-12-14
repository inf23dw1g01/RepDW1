'use strict';

var sql = require('../utils/dbFilmes.js');


/**
 * Create Personagem
 *
 * body Personagens  (optional)
 * returns Personagens
 **/
exports.createPersonagens = function(body) {
  return new Promise(function(resolve, reject) {
    console.log(body);
    sql.query("INSERT INTO Personagens (name, role) Values (?,?)",[body.name,body.role],function(err,res){
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
 * Delete Ator
 *
 * id Long 
 * no response value expected for this operation
 **/
exports.deletePersonagens = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("DELETE FROM Personagens WHERE id = ?",[id], function (err,res){
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
 * Retrieve Personagem
 *
 * id Long 
 * returns Personagens
 **/
exports.retrievePersonagem = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Personagens WHERE id = ?",[id], function(err,res){
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
 * Retrieve Personagem
 *
 * returns List
 **/
exports.retrievePersonagens = function() {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Personagens",function(err,res){
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
 * Update Personagem
 *
 * body Personagens 
 * id Long 
 * no response value expected for this operation
 **/
exports.updatePersonagens = function(body,id) {
  return new Promise(function(resolve, reject) {
    sql.query("UPDATE Personagens set name = ?, role = ? WHERE id = ?", [body.name,body.role, id],function(err,res){
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

