module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    jison: {
	grid : {
		file : {
			src: 'src/grid/parser/grid.jison',
			dest:'src/grid/parser/grid.js'
		}
	}
    }	
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-jison');

  // Default task(s).
  grunt.registerTask('default', ['jison']);

};
