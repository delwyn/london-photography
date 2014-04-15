'use strict';

angular.module('app').controller('AdminPhotoCtrl', ['$scope', '$state', 'Photo', 'photo', function($scope, $state, Photo, photo) {
  $scope.photo = photo;
  $scope.legend = 'Edit Photo';

  $scope.save = function(photo) {
    photo.$update(function() {
      $state.go('admin.photos.index');
    });
  };
}]);
