requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '../../../../',
	shim : {
    	chords : { deps : ["grid", "jquery"]},
    	diagram : { deps : ["jquery"]}
    },
    paths: {
        transpose: 'bower_components/jquery.chords/transpose',
        grid: 'bower_components/jquery.chords/grid',
        jquery: 'bower_components/jquery/jquery',
        chords: 'bower_components/jquery.chords/jquery.chords',
        diagram: 'bower_components/jquery.chords/jquery.diagram',
        boostrap: 'bower_components/bootstrap.bower/bootstrap.min',
        angular: 'bower_components/angular/angular.min',
        app: 'assets/js/app',
        TrackController: 'assets/js/TrackController',
        ChordsDirective: 'assets/js/ChordsDirective',
    }
});


requirejs(["diagram", "app", "TrackController", "ChordsDirective" ], function() {
	$(document).ready(function() {
        $(".diagram").diagram();
     });    
});
