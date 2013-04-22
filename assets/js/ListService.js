---
---
'use strict';
define(['app'], function (app) {
	app.factory('$trackList', function() {
		return [
			{% for post in site.posts %}{title : "{{ post.title }}", url: "{{ post.url }}", author : "{{ post.author }}" },
			{% endfor %}
		];
	})
	return {};	
})