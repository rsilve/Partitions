"use strict";
define(['app', 'ListService'], function(app) {
	
  var ctrl = function($scope, $trackList) {
  	$scope.posts = $trackList
  }
  app.controller('ListController', ctrl);
  return {}
});

