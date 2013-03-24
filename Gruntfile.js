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
    },
    nodeunit: {
      tests: ['src/grid/test/*_test.js'],
    },
    clean: ["target"]	
  });
  
	
  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-jison');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-nodeunit');
  
  
  grunt.registerTask('test', ['clean', 'jison', 'nodeunit']);



  // Default task(s).
  grunt.registerTask('default', ['jison', 'nodeunit']);

};
