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
        grid: 'components/jquery.chords/grid',
        jquery: 'components/jquery/jquery',
        chords: 'components/jquery.chords/jquery.chords',
        diagram: 'components/jquery.chords/jquery.diagram',
        bootstrap: 'components/bootstrap.bower/js/bootstrap',
        angular: 'components/angular/angular.min',
        app: 'assets/js/app',
        EditorDirective: 'assets/js/EditorDirective',
        ChordsDirective: 'assets/js/ChordsDirective',
        ListController: 'assets/js/ListController',
        EditorController: 'assets/js/EditorController',
    }
});



requirejs(["app", "EditorDirective", "EditorController", "ChordsDirective"], function() {});
