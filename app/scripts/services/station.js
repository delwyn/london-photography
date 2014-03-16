'use strict';

angular.module('app').factory('Station', ['$resource', function($resource) {
  return $resource('/json/stations.json', {}, {
    all: { method: 'GET', isArray: true }
  });
}]);
