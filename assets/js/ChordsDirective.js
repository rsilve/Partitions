'use strict';
define(['app'], function (app) {

	var transpose = function(element, scope) {
		var $offset = $('<span/>')
		var $slide = $('<input type="range"  min="-11" max="11" value="0" step="1"/>')
		.css({ width : "324px" })
		.change(function() {
			$(element).data("chord-offset", $(this).val());
			scope.$emit("chords.transpose")
			$offset.html("&nbsp;" +$(this).val())
			
		})
		$offset.html("&nbsp;" +$slide.val())
		var $bar = $('<div/>')
		.addClass("no-print")
		.html("Transposition&nbsp;")
		$slide.appendTo($bar)
		$offset.appendTo($bar)
		return $bar
	}
	
	var render = function(element, value) {
		if (value === undefined || value === "") {
			return;
		}	
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
			//transpose(iElement, scope).insertAfter($(iElement))
			scope.$on("chords.error",  function(event, err) {
				if (iAttrs.chordsError) {
					scope.$evalAsync(function() { scope[iAttrs.chordsError] = err })
				}
			});
			scope.$on("chords.transpose",  function(event) {
				if (ngModel) {
					ngModel.$render();
				} else {
					var err = render(iElement, $(iElement).text())
					scope.$emit("chords.error", err)
				}	
			});
			
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