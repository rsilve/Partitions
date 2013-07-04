'use strict';
define(['app'], function (app) {

	var render = function(element, value) {
		if (value === undefined || value === "") {
			return;
		}	
		//console.log(value)
		var json = parser.parse(value);
		$(element).chords({json: json}); 
	}

	app.directive('chords', function factory() {
	  var directiveDefinitionObject = {
		restrict: 'AC',
		require: "?ngModel",
		//controller: function($scope, $element, $attrs, $transclude) { console.log("ctrl") },
		link: function postLink(scope, iElement, iAttrs, ngModel) {
			if (ngModel) {
				ngModel.$render = function() {
					render(iElement,  ngModel.$viewValue || '')
        		};
			} else {
				//console.log("no model");
				render(iElement, $(iElement).text())
			}
			
		}
	  };
	  return directiveDefinitionObject;
     });
     
});