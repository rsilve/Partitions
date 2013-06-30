'use strict';
define(['angular', 'grid', 'chords'], function () {
	var app = angular.module('myApp', [])
	.config(function($interpolateProvider) {
  		$interpolateProvider.startSymbol('((');
  		$interpolateProvider.endSymbol('))');
	})
	.directive("printPage", function() {
		return function($scope, element, attrs) {
			$(element).click(function() { window.print() });
		}
	}).directive('chords', function factory() {
	  var directiveDefinitionObject = {
		restrict: 'C',
		scope: {},
		//controller: function($scope, $element, $attrs, $transclude) { console.log("ctrl") },
		link: function postLink(scope, iElement, iAttrs) { 
			console.log("drawing chords");
			scope.data = $(iElement).text();
			//console.log(scope)
			 //$(iElement).chords();
			 scope.data = scope.data.replace(/A/g, 'B');
			 var json = parser.parse(scope.data);
		     $(iElement).chords({json: json});
		}
	  };
	  return directiveDefinitionObject;
     });
     
     return app;
});