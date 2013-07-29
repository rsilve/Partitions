---
---
"use strict";
define(['app'], function(app) {
	
	var ctrl = function($scope) {
		$scope.addByMail = function() {
			var buff = "Titre : " + $scope.title
			buff += "\n\nAuteur(s) "+$scope.author
			buff += "\n\nGrille :\n"+$scope.chords
			buff = encodeURIComponent(buff)
			document.location.href = "mailto:robert@silve.net?subject=[Demande d'ajout]&body="+buff
		}
		
		$scope.hasError = function() {
			return $scope.error ? '': 'hide';
		}
	}
	
  return app.controller('EditorController', ctrl);
});

