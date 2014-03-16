'use strict';

/**
 * photoQueryFilter - Filters a list of photos by a query string
 *
 * @param  {[type]}   photos - The photos to filter
 * @param  {[string]} query - The query string
 * @return {[array]}  The photos matching the query
 */
function photoQueryFilter(photos, query) {
  if (!query) return photos;

  var regex = new RegExp('\\b' + query, 'i');

  return photos.filter(function(photo) {
    if (photo.name.match(regex)) return true;
    if (photo.description.match(regex)) return true;

    return false;
  });
};

angular.module('app').filter('photoQueryFilter', function() {
  return photoQueryFilter;
});
