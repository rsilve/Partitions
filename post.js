requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '../../../../',
	shim : {
    	chords : { deps : ["grid", "jquery"]},
    	diagram : { deps : ["jquery"]}
    },
    paths: {
        grid: 'components/jquery.chords/grid',
        jquery: 'components/jquery/jquery',
        chords: 'components/jquery.chords/jquery.chords',
        diagram: 'components/jquery.chords/jquery.diagram',
        boostrap: 'components/bootstrap.bower/bootstrap.min',
        angular: 'components/angular/angular.min',
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
