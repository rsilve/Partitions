({
    baseUrl: "./_site/",
    //Comment out the optimize line if you want
    //the code minified by UglifyJS.
    optimize: "none",

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
    },
	excludeShallow : "ListController",
	name: "tracks",
	out: "main-built.js"
})
