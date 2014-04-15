'use strict';

angular.module('app').factory('Station', ['$resource', function($resource) {
  return $resource('/api/stations');
}]);
