'use strict';

var utils = require('../utils/writer.js');
var DiretoresController = require('../service/DiretoresControllerService');

module.exports.createDiretores = function createDiretores (req, res, next, body) {
  DiretoresController.createDiretores(body)
  .then(DiretoresController.retrieveDiretor)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteDiretored = function deleteDiretored (req, res, next, id) {
  DiretoresController.deleteDiretored(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.retrieveDiretor = function retrieveDiretor (req, res, next, id) {
  DiretoresController.retrieveDiretor(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.retrieveDiretores = function retrieveDiretores (req, res, next) {
  DiretoresController.retrieveDiretores()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateDiretores = function updateDiretores (req, res, next, body, id) {
  DiretoresController.updateDiretores(body, id)
  .then(DiretoresController.retrieveDiretor)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
