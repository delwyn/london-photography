'use strict';

angular.module('app')
  .controller('PhotoCtrl', ['$scope', '$stateParams', '$state', 'Photo', function ($scope, $stateParams, $state, Photo) {
    $scope.photo = Photo.find($stateParams.id);

    $scope.closeDialog = function() {
      $state.go('photos');
    };
  }]);
