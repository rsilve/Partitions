'use strict';
define(['angular'], function () {
	var app = angular.module('myApp', [])
	 .config(function($interpolateProvider) {
  		$interpolateProvider.startSymbol('((');
  		$interpolateProvider.endSymbol('))');
	});
  return app;
});