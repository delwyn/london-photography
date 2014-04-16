'use strict';

angular.module('app')
  .controller('PhotoCtrl', ['$scope', '$stateParams', '$state', 'photo', function ($scope, $stateParams, $state, photo) {
    $scope.photo = photo;

    $scope.closeDialog = function() {
      $state.go('photos');
    };
  }]);
