'use strict';

angular.module('app').factory('Auth', ['$rootScope', '$http', function($rootScope, $http) {
    return {
      isAuthenticated: function() {
        return $rootScope.user;
      },

      logout: function() {

      },

      login: function(user, success, failure) {
        $rootScope.user = undefined;

        return $http.post('/api/login', user).then(function(user) {
          $rootScope.user = user;
          success();
        }, function() {
          failure();
        });
      }
    };
}]);
