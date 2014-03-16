'use strict';

angular.module('app', ['ngResource', 'ngRoute'])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/photos.html',
        controller: 'PhotosCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
