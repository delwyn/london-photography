'use strict';

/**
 * photoLineFilter - Filters a list of photos by a tube line
 *
 * @param  {[array]}  photos - The photos to filter
 * @param  {[number]} lineId - The line id
 * @param  {[array]}  stations - All the stations
 * @return {[array]}  The photos on the lines
 */
function photoLineFilter(photos, lineId, stations) {
  // Do not filter if a line is not selected
  if (!lineId) {
    return photos;
  }

  // IDs of all stations on current line
  var stationIds = stations.filter(function(station) {
    return station.lineIds.indexOf(lineId) !== -1;
  }).map(function(station) {
    return station.id;
  });

  return photos.filter(function(photo) {
    return photo.stationIds.some(function(station) {
      return stationIds.indexOf(station) !== -1;
    });
  });
}

angular.module('app').filter('photoLineFilter',function() {
  return photoLineFilter;
});
