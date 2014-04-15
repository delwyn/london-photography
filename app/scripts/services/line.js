'use strict';

angular.module('app').factory('Line', ['$resource', function($resource) {
  return $resource('/api/lines');
}]);
