'use strict';
define(['app'], function (app) {

	var render = function(element, value) {
		if (value === undefined || value === "") {
			return;
		}	
		//console.log(value)
		try {
			var json = parser.parse(value);
			$(element).chords({json: json});
		} catch (e) {
			var m = e.message.split("\n");
			var s = m[0] + "\n" + m[1].substr(Math.max(0, m[1].length - 5));
			return s;
		} 
	}

	app.directive('chords', function factory() {
	  var directiveDefinitionObject = {
		restrict: 'AC',
		require: "?ngModel",
		link: function postLink(scope, iElement, iAttrs, ngModel) {
			scope.$on("chords.error",  function(event, err) {
				if (iAttrs.chordsError) {
					scope.$evalAsync(function() { scope[iAttrs.chordsError] = err })
				}
			})
			if (ngModel) {
				ngModel.$render = function() {
					var err = render(iElement,  ngModel.$viewValue || '')
					scope.$emit("chords.error", err)
				};
			} else {
				var err = render(iElement, $(iElement).text())
				scope.$emit("chords.error", err)
			}
			
			
			
		}
	  };
	  return directiveDefinitionObject;
     });
     
});