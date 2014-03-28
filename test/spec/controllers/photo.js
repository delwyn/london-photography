'use strict';

describe('Controller: PhotoCtrl', function () {

  // load the controller's module
  beforeEach(module('app'));

  var controller, scope, Photo;

  Photo = {
    find: function() {
      return { id: 1, name: 'Some Photo' };
    }
  };

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    controller = $controller('PhotoCtrl', {
      $scope: scope,
      $stateParam: { id: 1 },
      Photo: Photo
    });
  }));

  it('assigns the photo', function () {
    expect(scope.photo.id).toBe(1);
    expect(scope.photo.name).toBe('Some Photo');
  });
});
