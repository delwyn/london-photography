angular.module("app").run(["$templateCache",function(a){"use strict";a.put("views/admin/admin.html",'<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">\n  <div class="container">\n    <div class="navbar-header">\n      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">\n        <span class="sr-only">Toggle navigation</span>\n        <span class="icon-bar"></span>\n        <span class="icon-bar"></span>\n        <span class="icon-bar"></span>\n      </button>\n      <a class="navbar-brand" ui-sref="admin">London Photography | Admin</a>\n    </div>\n    <div class="collapse navbar-collapse">\n      <ul class="nav navbar-nav">\n        <li ng-class="{active: $state.current.name.match(\'^admin.photos\')}"><a ui-sref="admin.photos.index">Photos</a></li>\n        <li ng-class="{active: $state.current.name.match(\'^admin.lines\')}"><a ui-sref="admin.lines">Lines</a></li>\n        <li ng-class="{active: $state.current.name.match(\'^admin.stations\')}"><a ui-sref="admin.stations">Stations</a></li>\n      </ul>\n    </div>\n  </div>\n</div>\n\n<div class="container">\n  <div class="row">\n    <div class="col-sm-8 col-sm-offset-2">\n      <div ui-view></div>\n    </div>\n  </div>\n</div>\n'),a.put("views/admin/lines.html","Lines\n"),a.put("views/admin/photo.html",'<form ng-submit="save(photo)" class="form-horizontal" role="form">\n  <legend>{{legend}}</legend>\n  <div class="form-group">\n    <label for="name" class="col-sm-2 control-label">Name</label>\n    <div class="col-sm-10">\n      <input type="text" class="form-control" ng-model="photo.name">\n    </div>\n  </div>\n\n  <div class="form-group">\n    <label for="description" class="col-sm-2 control-label">Description</label>\n    <div class="col-sm-10">\n      <textarea class="form-control" ng-model="photo.description"></textarea>\n    </div>\n  </div>\n\n  <div class="form-group">\n    <label for="lat" class="col-sm-2 control-label">Latitude</label>\n    <div class="col-sm-10">\n      <input type="text" class="form-control" ng-model="photo.lat">\n    </div>\n  </div>\n\n  <div class="form-group">\n    <label for="lng" class="col-sm-2 control-label">Longitude</label>\n    <div class="col-sm-10">\n      <input type="text" class="form-control" ng-model="photo.lng">\n    </div>\n  </div>\n\n  <div class="form-group">\n    <label for="smallUrl" class="col-sm-2 control-label">Small Url</label>\n    <div class="col-sm-10">\n      <input type="text" class="form-control" ng-model="photo.smallUrl">\n    </div>\n  </div>\n\n  <div class="form-group">\n    <label for="largeUrl" class="col-sm-2 control-label">Large Url</label>\n    <div class="col-sm-10">\n      <input type="text" class="form-control" ng-model="photo.largeUrl">\n    </div>\n  </div>\n\n  <div class="form-group">\n    <div class="col-sm-offset-2 col-sm-10">\n      <button type="submit" class="btn btn-primary">Submit</button>\n      <button type="button" class="btn btn-default" ui-sref="admin.photos.index">Cancel</button>\n    </div>\n  </div>\n</form>\n'),a.put("views/admin/photos.html",'<table class="table">\n  <thead>\n    <tr>\n      <th>Name</th>\n      <th></th>\n      <th></th>\n      <th></th>\n      <th></th>\n    </tr>\n  </thead>\n  <tbody>\n    <tr ng-repeat="photo in photos">\n      <td>\n        <a ui-sref="admin.photos.photo({id: photo.id})">{{photo.name}}</a>\n      </td>\n      <td></td>\n      <td></td>\n      <td></td>\n      <td></td>\n    </tr>\n  </tbody>\n</table>\n'),a.put("views/admin/stations.html","Stations\n"),a.put("views/footer.html",'<div class="social-links-container">\n  <ul>\n    <li ng-repeat="link in links">\n      <a target="_blank" ng-href="{{link.url}}">\n        <div class=\'social-image ng-class:link.name\'></div>\n      </a>\n    </li>\n  </ul>  \n</div>\n\n<div class="copyright">\n  &copy {{year}} Michael Murphy, All Rights Reserved\n</div>'),a.put("views/photo.html",'<div ng-click="closeDialog()" class="photo-dialog-overlay"></div>\n<div class="photo-dialog">\n  <img class="dialog-img" ng-src="{{photo.largeUrl}}"/>\n  <h2 id="dialog-title">{{photo.name}}</h2>\n  <p>{{photo.description}}</p>\n</div>'),a.put("views/photos.html",'<h1>Best photo locations in London</h1>\n\n<div class="row map-row">\n  <div class="col-md-12 photo-map-col">\n    <google-map class=\'photo-map\'></google-map>\n  </div>\n</div>\n\n<div class="row filters-row">\n  <div class="col-md-2 col-xs-3">\n    <form class="form-inline">\n      <input type="search" class="form-control search" placeholder="Search..." ng-model="query">\n    </form>\n  </div>\n\n  <div class="col-md-10 col-xs-9">\n    <button id=\'line-filter-{{line.id}}\'\n            class=\'line-filter\'\n            title="{{line.name}}"\n            ng-repeat="line in lines"\n            ng-style="{ \'background-color\': line.color }"\n            ng-click="filterByLine(line.id)">\n    </button>\n  </div>\n</div>\n\n<div class="row photos-row">\n  <div class="col-md-12 photos-col">\n\n    <ul ng-switch=\'filteredPhotos.length\' class=\'photos\'>\n      <li ng-switch-when=\'0\' class=\'no-photos\'>No photos found</li>\n\n      <li class=\'photo\' ng-repeat="photo in filteredPhotos">\n      <!-- <li class=\'photo\' ng-repeat="photo in (filteredPhotos = (photos | filter:query | photoLineFilter:line:stations))"> -->\n        <div class="row">\n          <div class="col-md-3">\n            <a ui-sref="photos.photo({ id: photo.id })">\n              <img ng-src="{{photo.smallUrl}}"/>\n            </a>\n          </div>\n\n          <div class="col-md-7">\n            <h3>{{photo.name}}</h3>\n            <p>{{photo.description}}</p>\n          </div>\n\n          <div class="col-md-2">\n            Underground Stations\n            <ul class=\'stations\'>\n              <li class=\'station\' class=\'clearfix\' ng-repeat="stationId in photo.stationIds">\n                <div class="station-name" ng-init=\'station = (stations | filter:{ id: stationId }:true)[0]\'>\n                  {{ station.name }}\n                </div>\n\n                <button class=\'station-lines\'\n                        title="{{line.name}}"\n                        ng-repeat="line in lines | byIds:station.lineIds"\n                        ng-style="{ \'background-color\': line.color }"\n                        ng-click="filterByLine(line.id)">\n                </button>\n              </li>\n            </ul>\n          </div>\n        </div>\n      </li>\n    </ul>\n  </div>\n</div>\n\n<!-- Nested view for photo dialog -->\n<div ui-view></div>\n\n<footer ng-include="\'views/footer.html\'" ng-controller="FooterCtrl"></footer>\n')}]);