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
	})
     
     return app;
});