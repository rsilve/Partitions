requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '.',
    paths: {
        grid: '/components/jquery.chords/grid',
        jquery: '/components/jquery/jquery',
        chords: '/components/jquery.chords/jquery.chords',
        diagram: '/components/jquery.chords/jquery.diagram',
        boostrap: '/components/bootstrap.bower/bootstrap.min',
        angular: '/components/angular/angular.min',
        app: '/assets/js/app',
        ListController: '/assets/js/ListController',
    }
});


requirejs(["angular", "app", "ListController", "chords","diagram" ], function() {
	
	angular.element(document).ready(function () {
    	angular.bootstrap(document, ['myApp']);
  	});
	$(document).ready(function() {
        $(".chords").chords();
        $(".diagram").diagram();
     });    
});
