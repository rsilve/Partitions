requirejs.config({
    //By default load any module IDs from js/lib
    baseUrl: '../../../',
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
        ListController: 'assets/js/ListController',
    }
});


requirejs(["chords", "diagram" ], function() {
	$(document).ready(function() {
        $(".chords").chords();
        $(".diagram").diagram();
     });    
});
