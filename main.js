requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '.',
    paths: {
        grid: 'components/jquery.chords/grid',
        jquery: 'components/jquery/jquery',
        chords: 'components/jquery.chords/jquery.chords',
        diagram: 'components/jquery.chords/jquery.diagram',
        bootstrap: 'components/bootstrap.bower/js/bootstrap',
        angular: 'components/angular/angular.min',
        app: 'assets/js/app',
        ListController: 'assets/js/ListController',
        EditorController: 'assets/js/EditorController',
    }
});



requirejs(["jquery", "bootstrap", "angular", "app", "ListController", "EditorController", "chords", "diagram" ], function() {
	angular.bootstrap(document, ['myApp']);	
	$(document).ready(function() {
        $(".chords").chords();
        $(".diagram").diagram();
    	
     });    
});
