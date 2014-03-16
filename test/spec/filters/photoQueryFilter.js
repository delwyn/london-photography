'use strict';

describe('Filter: photoQueryFilter', function () {
  var filter, photos;

  photos = [
    { id: 1, name: 'London Eye', description: 'On the river' },
    { id: 2, name: 'Tate Modern', description: 'In the city' }
  ];

  beforeEach(module('app'));

  beforeEach(inject(function ($filter) {
    filter = $filter('photoQueryFilter');
  }));

  function query(text) {
    return filter(photos, text);
  }

  it('should return all the photos when query is empty', function() {
    expect(query('').length).toBe(2);
  });

  it('should return photos with a name matching query*"', function () {
    expect(query('lon').length).toBe(1);
    expect(query('ondon').length).toBe(0);
    expect(query('eye').length).toBe(1);
  });

  it('should return photos with a description matching query*', function() {
    expect(query('river').length).toBe(1);
    expect(query('iver').length).toBe(0);
    expect(query('on the').length).toBe(1);
  });

  it('should return photos with station matching query*'); // ???
  it('should return photos with line matching query*'); // ???
});
