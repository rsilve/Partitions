requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '../',
    shim : {
    	bootstrap : { deps : ["jquery"]},
		chords : { deps : ["grid", "jquery"]},
    	diagram : { deps : ["jquery"]}
    },
    paths: {
        transpose: 'bower_components/jquery.chords/transpose',
        grid: 'bower_components/jquery.chords/grid',
        jquery: 'bower_components/jquery/jquery',
        chords: 'bower_components/jquery.chords/jquery.chords',
        diagram: 'bower_components/jquery.chords/jquery.diagram',
        bootstrap: 'bower_components/bootstrap.bower/js/bootstrap',
        angular: 'bower_components/angular/angular.min',
        app: 'assets/js/app',
        EditorDirective: 'assets/js/EditorDirective',
        ChordsDirective: 'assets/js/ChordsDirective',
        ListController: 'assets/js/ListController',
        EditorController: 'assets/js/EditorController',
    }
});



requirejs(["app", "EditorDirective", "EditorController", "ChordsDirective"], function() {});
