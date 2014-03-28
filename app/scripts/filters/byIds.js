'use strict';

/**
 * byIds - Filters an array of objects and returns the objects matching the specified ids
 *
 * @param  {[array]} objects - Array of object to apply the filter to
 * @param  {[array]} ids - IDs of the objects to return
 * @return {[array]} Objects matching
 */
function byIds(objects, ids) {
  if (!objects) {
    return objects;
  }

  return objects.filter(function(object) {
    return ids.indexOf(object.id) !== -1;
  });
};

angular.module('app').filter('byIds', function() {
  return byIds;
});
