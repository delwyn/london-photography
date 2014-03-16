'use strict';

angular.module('app').factory('Line', ['$resource', function($resource) {
  return $resource('/json/lines.json', {}, {
    all: { method: 'GET', isArray: true }
  });
}]);