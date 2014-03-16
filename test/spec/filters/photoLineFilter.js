'use strict';

describe('Filter: photoLineFilter', function () {
  var filter, photo1, photo2, photos, stations;

  stations = [
    { id: 1, lineIds: [6]},
    { id: 2, lineIds: [6, 7]},
    { id: 3, lineIds: [8]}
  ];

  photo1 = { stationIds: [1] };
  photo2 = { stationIds: [2, 4] };

  photos = [
    photo1,
    photo2
  ];

  beforeEach(module('app'));

  beforeEach(inject(function ($filter) {
    filter = $filter('photoLineFilter');
  }));

  it('should return the photos on the line', function () {
    var line1Photos = filter(photos, 6, stations);
    var line2Photos = filter(photos, 7, stations);
    var line3Photos = filter(photos, 8, stations);

    expect(line1Photos.length).toBe(2);
    expect(line1Photos).toContain(photo1);
    expect(line1Photos).toContain(photo2);

    expect(line2Photos.length).toBe(1);
    expect(line2Photos).toContain(photo2);

    expect(line3Photos.length).toBe(0);
  });
});
