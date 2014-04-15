'use strict';

angular.module('app')
  .controller('PhotosCtrl', ['$scope', '$filter', 'photos', 'lines', 'stations', function ($scope, $filter, photos, lines, stations) {
    $scope.query = '';
    $scope.line  = null;

    $scope.stations = stations;
    $scope.lines    = lines;
    $scope.photos   = photos;

    $scope.$watchCollection('[line, query, photos]', function(newValues) {
      var line  = newValues[0];
      var query = newValues[1];

      $scope.filteredPhotos = $filter('photoQueryFilter')($scope.photos, query);
      $scope.filteredPhotos = $filter('photoLineFilter')($scope.filteredPhotos, line, $scope.stations);
    });

    $scope.filterByLine = function(id) {
      $scope.line = id;
    };
  }]);
