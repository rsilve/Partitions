requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '../',
    shim : {
    	bootstrap : { deps : ["jquery"]},
		chords : { deps : ["grid", "jquery"]},
    	diagram : { deps : ["jquery"]}
    },
    paths: {
        grid: 'components/jquery.chords/grid',
        jquery: 'components/jquery/jquery',
        chords: 'components/jquery.chords/jquery.chords',
        diagram: 'components/jquery.chords/jquery.diagram',
        bootstrap: 'components/bootstrap.bower/js/bootstrap',
        angular: 'components/angular/angular.min',
        app: 'assets/js/app',
        EditorDirective: 'assets/js/EditorDirective',
        ListController: 'assets/js/ListController',
        EditorController: 'assets/js/EditorController',
    }
});



requirejs(["app", "EditorDirective", "EditorController", "chords", "diagram" ], function() {});
