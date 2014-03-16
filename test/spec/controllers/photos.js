'use strict';

describe('Controller: PhotosCtrl', function () {
  var ctrl, scope, $httpBackend, photos, stations, lines;

  photos = [{id: 1, name: 'Photo 1'}, {id: 2, name: 'Photo 2'}];
  stations = [{id: 11, name: 'Station 1'}, {id: 12, name: 'Station 2'}];
  lines = [{id: 21, name: 'Line 1'}, {id: 22, name: 'Line 2'}];

  beforeEach(module('app'));

  beforeEach(inject(function ($controller, $rootScope, _$httpBackend_) {
    scope = $rootScope.$new();
    ctrl = $controller('PhotosCtrl', { $scope: scope });
    $httpBackend = _$httpBackend_;
  }));

  describe('initialize', function() {
    beforeEach(function() {
      $httpBackend.expectGET('/json/stations.json').respond(stations);
      $httpBackend.expectGET('/json/lines.json').respond(lines);
      $httpBackend.expectGET('/json/photos.json').respond(photos);
      $httpBackend.flush();
    });

    it('should load the photos', function() {
      expect(scope.photos.length).toBe(2);
      expect(scope.photos[0].id).toBe(1);
    });

    it('should load the stations', function() {
      expect(scope.stations.length).toBe(2);
      expect(scope.stations[0].id).toBe(11);
    });

    it('should load the lines', function() {
      expect(scope.lines.length).toBe(2);
      expect(scope.lines[0].id).toBe(21);
    });
  });

  describe('filterByLine', function() {
    it('should set the line', function () {
      expect(scope.line).toBe(null);
      scope.filterByLine(1);
      expect(scope.line).toBe(1);
    });
  });
});
