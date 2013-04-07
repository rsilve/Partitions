'use strict';
define(['angular', 'grid', 'chords'], function () {
	var app = angular.module('myApp', [])
	 .config(function($interpolateProvider) {
  		$interpolateProvider.startSymbol('((');
  		$interpolateProvider.endSymbol('))');
	})
	.directive("chordsRender", function() {
		return function($scope, element, attrs) {
			$scope.$watch("chords", function(value) {
				if (value === undefined || value === "") {
					return;
				}
				$(attrs.chordsRender).chords({json: parser.parse(value)});
      		});
		}
	});
  return app;
});