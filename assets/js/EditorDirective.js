'use strict';
define(['app'], function (app) {
	app.directive("chordsRender", function() {
		return function($scope, element, attrs) {
			$scope.$watch("chords", function(value) {
				if (value === undefined || value === "") {
					return;
				}
				try {
				  var json = parser.parse(value)
				  $(attrs.chordsRender).chords({json: json});
				  $(attrs.chordsMessage).empty().hide();
				} catch (e) {
				  var m = e.message.split("\n");
				  var s = m[0] + "\n" + m[1].substr(Math.max(0, m[1].length - 5));
				  $(attrs.chordsMessage).text(s).show();	
				}
      		});
		}
	})
     
});