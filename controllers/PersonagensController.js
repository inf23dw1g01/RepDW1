'use strict';

var utils = require('../utils/writer.js');
var PersonagensController = require('../service/PersonagensControllerService');

module.exports.createPersonagens = function createPersonagens (req, res, next, body) {
  PersonagensController.createPersonagens(body)
  .then(PersonagensController.retrievePersonagem)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deletePersonagens = function deletePersonagens (req, res, next, id) {
  PersonagensController.deletePersonagens(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.retrievePersonagem = function retrievePersonagem (req, res, next, id) {
  PersonagensController.retrievePersonagem(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.retrievePersonagens = function retrievePersonagens (req, res, next) {
  PersonagensController.retrievePersonagens()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updatePersonagens = function updatePersonagens (req, res, next, body, id) {
  PersonagensController.updatePersonagens(body, id)
  .then(PersonagensController.retrievePersonagem)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
