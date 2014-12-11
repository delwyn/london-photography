'use strict';

function getById(id, objects) {
  id = parseInt(id, 10);

  for (var i = 0; i < objects.length; i++) {
    if (id === objects[i].id) {
      console.log('equal');
      return objects[i];
    }
  }
}

angular.module('app', ['ngResource', 'ui.router'])
  .config(function($stateProvider, $urlRouterProvider) {

    $urlRouterProvider
      // .when('/admin', '/admin/photos')
      .otherwise('/photos');

    $stateProvider
      .state('photos', {
        url: '/photos',
        templateUrl: 'views/photos.html',
        controller: 'PhotosCtrl',
        resolve: {
          photos: ['Photo', function(Photo) {
            return Photo.query().$promise;
          }],
          lines: ['Line', function(Line) {
            return Line.query().$promise;
          }],
          stations: ['Station', function(Station) {
            return Station.query().$promise;
          }],
        }
      })

      .state('photos.photo', {
        url: '/:id',
        templateUrl: 'views/photo.html',
        controller: 'PhotoCtrl',
        resolve: {
          photo: ['$stateParams', 'photos', function($stateParams, photos) {
            return getById($stateParams.id, photos);
          }],
          image: ['$q', 'photo', function($q, photo) {
            var d = $q.defer();
            var img = new Image();

            img.onload = function() {
              d.resolve(this);
            };

            img.src = photo.largeUrl;

            return d.promise;
          }]
        },
        onEnter: function() {
          document.body.style.overflow = 'hidden';
        },
        onExit: function() {
          document.body.style.overflow = 'auto';
        }
      })

      .state('admin', {
        url: '/admin',
        templateUrl: 'views/admin/admin.html',
        authenticate: true
      })

      .state('admin.login', {
        url: '/login',
        templateUrl: 'views/admin/login.html',
        controller: 'AdminLoginCtrl'
      })

      .state('admin.photos', {
        url: '/photos',
        abstract: true,
        template: '<ui-view/>',
        authenticate: true,
        resolve: {
          photos: ['Photo', function(Photo) {
            return Photo.query().$promise;
          }]
        }
      })

      .state('admin.photos.index', {
        url: '',
        templateUrl: 'views/admin/photos.html',
        controller: 'AdminPhotosCtrl',
        authenticate: true
      })

      .state('admin.photos.photo', {
        url: '/:id',
        templateUrl: 'views/admin/photo.html',
        controller: 'AdminPhotoCtrl',
        authenticate: true,
        resolve: {
          photo: ['$stateParams', 'photos', function($stateParams, photos) {
            return getById($stateParams.id, photos);
          }]
        }
      })

      .state('admin.lines', {
        url: '/lines',
        templateUrl: 'views/admin/lines.html',
        controller: 'AdminLinesCtrl',
        authenticate: true,
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
        authenticate: true,
        resolve: {
          // photos: ['Photo', function(Photo) {
          //   return Photo.all();
          // }]
        }
      });
  })

  .run(function($rootScope, $state) {
    $rootScope.$state = $state;

    $rootScope.$on('$stateChangeStart', function(event, toState) {
      var el = angular.element(document.getElementsByTagName('body'));

      if (toState.name.match(/^admin/)) {
        el.addClass('admin');
        el.removeClass('main');
      } else {
        el.addClass('main');
        el.removeClass('admin');
      }
    });
  })


  .run(function($rootScope, $state, Auth) {
    // $rootScope.$on('$stateChangeStart', function(event, toState) {
    //   if (toState.authenticate && !Auth.isAuthenticated()) {
    //     event.preventDefault();
    //     $state.transitionTo('admin.login');
    //   }
    // });
  });
