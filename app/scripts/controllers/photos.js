'use strict';

angular.module('app')
  .controller('PhotosCtrl', ['$scope', '$filter', 'Line', 'Photo', 'Station', function ($scope, $filter, Line, Photo, Station) {
    $scope.query = '';
    $scope.line  = null;

    $scope.stations = Station.all();
    $scope.lines    = Line.all();
    $scope.photos   = Photo.all();

    $scope.$watchCollection('[line, query]', function(newValues) {
      var line  = newValues[0];
      var query = newValues[1];

      $scope.filteredPhotos = $filter('photoQueryFilter')($scope.photos, query);
      $scope.filteredPhotos = $filter('photoLineFilter')($scope.filteredPhotos, line, $scope.stations);
    });

    $scope.filterByLine = function(id) {
      $scope.line = id;
    };
  }]);
