'use strict';

var sql = require('../utils/dbDiretores.js');


/**
 * Create Diretor
 *
 * body Diretores  (optional)
 * returns Diretores
 **/
exports.createDiretores = function(body) {
  return new Promise(function(resolve, reject) {
    console.log(body);
    sql.query("INSERT INTO Diretores (name, date_of_birth) Values (?,?)",[body.name,body.date_of_birth],function(err,res){
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
 * Delete Diretor
 *
 * id Long 
 * no response value expected for this operation
 **/
exports.deleteDiretored = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("DELETE FROM Diretores WHERE id = ?",[id], function (err,res){
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
 * Retrieve Diretor
 *
 * id Long 
 * returns Diretores
 **/
exports.retrieveDiretor = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Diretores WHERE id = ?",[id], function(err,res){
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
 * Retrieve Diretor
 *
 * returns List
 **/
exports.retrieveDiretores = function() {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Diretores",function(err,res){
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
 * Update Diretor
 *
 * body Diretores 
 * id Long 
 * no response value expected for this operation
 **/
exports.updateDiretores = function(body,id) {
  return new Promise(function(resolve, reject) {
    sql.query("UPDATE Diretores set name = ?, date_of_birth = ? WHERE id = ?", [body.name,body.date_of_birth, id],function(err,res){
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

