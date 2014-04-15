'use strict';

var relsolveAll = {
  photos: ['Photo', function(Photo) {
    return Photo.query().$promise;
  }],
  lines: ['Line', function(Line) {
    return Line.query().$promise;
  }],
  stations: ['Station', function(Station) {
    return Station.query().$promise;
  }],
};

angular.module('app', ['ngResource', 'ui.router'])
  .config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider
      .when('/admin', '/admin/photos')
      .otherwise('/photos');

    $stateProvider
      .state('photos', {
        url: '/photos',
        templateUrl: 'views/photos.html',
        controller: 'PhotosCtrl',
        resolve: relsolveAll
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
      })

      .state('admin', {
        url: '/admin',
        templateUrl: 'views/admin/admin.html'
      })

      .state('admin.photos', {
        url: '/photos',
        abstract: true,
        template: '<ui-view/>',
        resolve: {
          photos: ['Photo', function(Photo) {
            return Photo.query().$promise;
          }]
        }
      })

      .state('admin.photos.index', {
        url: '',
        templateUrl: 'views/admin/photos.html',
        controller: 'AdminPhotosCtrl'
      })

      .state('admin.photos.photo', {
        url: '/:id',
        templateUrl: 'views/admin/photo.html',
        controller: 'AdminPhotoCtrl',
        resolve: {
          photo: ['$stateParams', 'photos', function($stateParams, photos) {
            return photos[$stateParams.id];
          }]
        }
      })

      .state('admin.lines', {
        url: '/lines',
        templateUrl: 'views/admin/lines.html',
        controller: 'AdminLinesCtrl',
        resolve: {
          // photos: ['Photo', function(Photo) {
          //   return Photo.all();
          // }]
        }
      })

      .state('admin.stations', {
        url: '/stations',
        templateUrl: 'views/admin/stations.html',
        controller: 'AdminStationsCtrl',
        resolve: {
          // photos: ['Photo', function(Photo) {
          //   return Photo.all();
          // }]
        }
      });
  })

  .run(function($rootScope, $state, $stateParams) {
    $rootScope.$state = $state;
    $rootScope.$stateParams = $stateParams;

    $rootScope.$on('$stateChangeStart', function(event, toState) {
      var el = $('body');

      if (toState.name.match(/^admin/)) {
        el.addClass('admin');
        el.removeClass('main');
      } else {
        el.addClass('main');
        el.removeClass('admin');
      }
    });
  });
