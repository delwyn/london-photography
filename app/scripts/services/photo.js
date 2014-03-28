'use strict';

// angular.module('app').factory('Photo', ['$resource', function($resource) {
//   return $resource('/json/photos.json', {}, {
//     all: { method: 'GET', isArray: true }
//   });
// }]);

angular.module('app').factory('Photo', ['$http', '$q', function($http, $q) {
  var photos = [], deferred;

  function all() {
    return $http.get('/json/photos.json').then(function(response) {
      photos = response.data;
      return photos;
    });
  }

  function find(id) {
    var photo;

    id = Number(id);

    for (var i=0; i < photos.length; i++) {
      photo = photos[i];

      if (photo.id === id) {
        return photo;
      }
    }

    return null;
  }


  return {
    all: all,
    find: find
  };
}]);