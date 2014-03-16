'use strict';

angular.module('app').factory('Photo', ['$resource', function($resource) {
  return $resource('/json/photos.json', {}, {
    all: { method: 'GET', isArray: true }
  });
}]);
