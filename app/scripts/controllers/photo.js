'use strict';

angular.module('app')
  .controller('PhotoCtrl', ['$scope', '$stateParams', '$state', 'photo', 'image', function ($scope, $stateParams, $state, photo, image) {
    $scope.photo = photo;
    $scope.image = image;

    $scope.closeDialog = function() {
      $state.go('photos');
    };
  }]);
