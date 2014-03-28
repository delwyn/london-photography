'use strict';

describe('Photos', function() {

  beforeEach(function() {
    browser().navigateTo('/#/photos/');
  });

  // Need to figure out how to mock out factories???

  it('should list all photos', function() {
    expect(repeater('.photos li.photo').count()).toBe(8);
  });

  it('should filter photos by query string', function() {
    input('query').enter('london eye');
    expect(repeater('.photos li.photo').count()).toBe(1);
  });

  it('should filter photos by line', function() {
    element('#line-filter-1').click();
    expect(repeater('.photos li.photo').count()).toBe(2);
  });

  it('should filter by query and line', function() {
    element('#line-filter-1').click();
    input('query').enter('Leake Street');
    expect(repeater('.photos li.photo').count()).toBe(1);
  });

  describe('when none match', function() {
    beforeEach(function() {
      expect(repeater('.photos li.no-photos').count()).toBe(0);
    });

    it('should show no photos found', function() {
      input('query').enter('zzz');
      expect(repeater('.photos li.photo').count()).toBe(0);
      expect(repeater('.photos li.no-photos').count()).toBe(1);
    });
  });

});
