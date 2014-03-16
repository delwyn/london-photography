'use strict';

angular.module('app')
  .controller('FooterCtrl', ['$scope', function($scope) {
    $scope.year = new Date().getFullYear();
    $scope.links = [
      {
        name: 'facebook',
        url: 'https://www.facebook.com/murphyz'
        // img: '/images/facebook-grey.png',
        // altImage: '/images/facebook-colour.png'
      },
      {
        name: 'twitter',
        url: 'https://twitter.com/murphyz'
        // img: '/images/facebook-grey.png',
        // altImage: '/images/facebook-colour.png'
      },
      {
        name: 'tumblr',
        url: 'http://murphyz.tumblr.com'
        // img: '/images/facebook-grey.png',
        // altImage: '/images/facebook-colour.png'
      },
      {
        name: 'instagram',
        url: 'https://instagram.com/murphyz'
        // img: '/images/facebook-grey.png',
        // altImage: '/images/facebook-colour.png'
      },
      {
        name: 'flickr',
        url: 'https://www.flickr.com/murphyzmike'
        // img: '/images/facebook-grey.png',
        // altImage: '/images/facebook-colour.png'
      },
      {
        name: 'googleplus',
        url: 'https://plus.google.com/+MichaelMurphy'
        // img: '/images/facebook-grey.png',
        // altImage: '/images/facebook-colour.png'
      }
    ];
  }]);