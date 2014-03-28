'use strict';

angular.module('app', ['ngResource', 'ui.router'])
  .config(function ($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/photos');

    $stateProvider
      .state('photos', {
        url: '/photos',
        templateUrl: 'views/photos.html',
        controller: 'PhotosCtrl',
        resolve: {
          photos: function(Photo) {
            return Photo.all();
          }
        }
      })
      .state('photos.photo', {
        url: '/:id',
        templateUrl: 'views/photo.html',
        controller: 'PhotoCtrl',
        onEnter: function() {
          document.body.style.overflow = 'hidden';
        },
        onExit: function() {
          document.body.style.overflow = 'auto';
        }
      });
  });