---
---
"use strict";
define(['app'], function(app) {
	
	var ctrl = function($scope) {
		
		$scope.posts = [
			{% for post in site.posts %}
    		{title : "{{ post.title }}", url: "{{ post.url }}", author : "{{ post.author }}" },
			{% endfor %}
		]
	}

  app.controller('ListController', ctrl);
  return {color: "black"}
});

