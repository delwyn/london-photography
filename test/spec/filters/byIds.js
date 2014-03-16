'use strict';

describe('Filter: byIds', function () {

  // load the filter's module
  beforeEach(module('app'));

  // initialize a new instance of the filter before each test
  var byIds, objects;

  objects = [
    { id: 1 },
    { id: 2 },
    { id: 3 },
  ];

  beforeEach(inject(function($filter) {
    byIds = $filter('byIds');
  }));

  it('should return the lines matching the ids', function () {
    var ids = [1,3,4];
    var filteredObjects = byIds(objects, ids);

    expect(filteredObjects.length).toBe(2);
    expect(filteredObjects).toContain({ id: 1 });
    expect(filteredObjects).toContain({ id: 3 });
    expect(filteredObjects).not.toContain({ id: 2});
  });
});
