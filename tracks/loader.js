requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '../',
    shim : {
    	bootstrap : { deps : ["jquery"]}
    },
    paths: {
        grid: 'bower_components/jquery.chords/grid',
        jquery: 'bower_components/jquery/jquery',
        chords: 'bower_components/jquery.chords/jquery.chords',
        diagram: 'bower_components/jquery.chords/jquery.diagram',
        bootstrap: 'bower_components/bootstrap.bower/js/bootstrap',
        angular: 'bower_components/angular/angular.min',
        app: 'assets/js/app',
        ListController: 'assets/js/ListController',
        EditorController: 'assets/js/EditorController',
        ListService: 'assets/js/ListService',
    }
});



requirejs(["app", "ListController", "ListService" ], function() {	
});
