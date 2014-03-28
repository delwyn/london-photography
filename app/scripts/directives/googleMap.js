'use strict';

angular.module('app')
  .directive('googleMap', function() {
    return {
      restrict: 'AE',
      template: '<div></div>',
      replace: true,
      link: function(scope, element) {
        var mapOptions, map, lat, lng, markers;

        function addPhotoMarker(photo) {
          var location = new google.maps.LatLng(photo.lat, photo.lng);
          var marker   = new google.maps.Marker({
            position: location,
            map: map
          });

          markers.push(marker);
        }

        function clearPhotoMarkers() {
          markers.forEach(function(marker) {
            marker.setMap(null);
          });

          markers = [];
        }

        lat = 51.5072;
        lng = -0.1275;

        mapOptions = {
          zoom: 13,
          center: new google.maps.LatLng(lat, lng)
        };

        markers = [];

        map = new google.maps.Map(element[0], mapOptions);

        scope.$watch('filteredPhotos', function(photos) {
          if (!(photos instanceof Array)) { return; }

          clearPhotoMarkers();

          photos.forEach(function(photo) {
            addPhotoMarker(photo);
          });
        }, true);
      }
    };
  });
