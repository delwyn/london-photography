'use strict';

angular.module('app', ['ngResource', 'ui.router'])
  .config(function ($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/photos');

    $stateProvider
      .state('photos', {
        url: '/photos',
        templateUrl: '/views/photos.html',
        controller: 'PhotosCtrl'
      });
  });