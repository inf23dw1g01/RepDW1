'use strict';

var utils = require('../utils/writer.js');
var AtoresController = require('../service/AtoresControllerService');

module.exports.createAtores = function createAtores (req, res, next, body) {
  AtoresController.createAtores(body)
  .then(AtoresController.retrieveAtor)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.deleteAtores = function deleteAtores (req, res, next, id) {
  AtoresController.deleteAtores(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.retrieveAtor = function retrieveAtor (req, res, next, id) {
  AtoresController.retrieveAtor(id)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.retrieveAtores = function retrieveAtores (req, res, next) {
  AtoresController.retrieveAtores()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.updateAtores = function updateAtores (req, res, next, body, id) {
  AtoresController.updateAtores(body, id)
  .then(AtoresController.retrieveAtor)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
