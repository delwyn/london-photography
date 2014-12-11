'use strict';

angular.module('app').controller('AdminLoginCtrl', ['$scope', '$state', 'Auth', function($scope, $state, Auth) {
  $scope.user = {
    email: 'delwyn.d@gmail.com',
    password: 'secret'
  };

  function reset() {
    delete $scope.user.password;
    delete $scope.error;
  }

  $scope.error = true;

  $scope.login = function() {
    var user = angular.copy($scope.user);

    reset();

    Auth.login(user, function() {
      $state.go('admin');
    }, function() {
      $scope.error = true;
    });
  };
}]);
