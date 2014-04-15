'use strict';

angular.module('app').factory('Photo', ['$resource', function($resource) {
  return $resource('/api/photos/:id', { id: '@id' }, {
    update: { method: 'PUT' }
  });
}]);
