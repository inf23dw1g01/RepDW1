'use strict';

var sql = require('../utils/dbFilmes.js');

/**
 * Create Ator
 *
 * body Atores  (optional)
 * returns Atores
 **/
exports.createAtores = function(body) {
  return new Promise(function(resolve, reject) {
    console.log(body);
    sql.query("INSERT INTO Atores (name, date_of_birth) Values (?,?)",[body.name,body.date_of_birth],function(err,res){
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
exports.deleteAtores = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("DELETE FROM Atores WHERE id = ?",[id], function (err,res){
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
 * Retrieve Ator
 *
 * id Long 
 * returns Atores
 **/
exports.retrieveAtor = function(id) {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Atores WHERE id = ?",[id], function(err,res){
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
 * Retrieve Ator
 *
 * returns List
 **/
exports.retrieveAtores = function() {
  return new Promise(function(resolve, reject) {
    sql.query("SELECT * FROM Atores",function(err,res){
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
 * Update Ator
 *
 * body Atores 
 * id Long 
 * no response value expected for this operation
 **/
exports.updateAtores = function(body,id) {
  return new Promise(function(resolve, reject) {
    sql.query("UPDATE Atores set name = ?, date_of_birth = ? WHERE id = ?", [body.name,body.date_of_birth, id],function(err,res){
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

