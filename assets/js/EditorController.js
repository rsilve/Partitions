---
---
"use strict";
define(['app'], function(app) {
	
	var ctrl = function($scope) {
		$scope.addByMail = function() {
			
			document.location.href = "mailto:robert@silve.net"
		}
	}
	
  return app.controller('EditorController', ctrl);
});

