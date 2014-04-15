'use strict';

angular.module('app').controller('AdminPhotosCtrl', ['$scope', 'photos', function($scope, photos) {
  $scope.photos = photos;
}]);
