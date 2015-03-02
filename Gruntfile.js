/*global module:false*/

var process = require('child_process');
var exec = process.exec;

module.exports = function (grunt) {

    // Project configuration.
    grunt.initConfig({
   		'gh-pages': {
    		options: {
      			base: 'build/web',
      			message: 'Auto-generated commit',
      			push: true,
    		},
    		src: '**/*'
  		},
  		copy: {
  			main: {
    			files: [
      				// Copy all files and folders relative to cwd into dest folder
      				{expand: true, cwd: 'lib/ui', src: ['**'], dest: 'build/web/packages/angular_ui_demo/ui'},
    			],
  			},
		}	
	});

	grunt.loadNpmTasks('grunt-gh-pages');
	grunt.loadNpmTasks('grunt-contrib-copy');
	
	grunt.registerTask('pub', 'Executing pub build...', function() {

		var next = this.async();

		var options = this.options({
			root: '.',
			mode: 'release' // release or debug
		});

		exec('pub build --mode=' + options.mode, {'cwd':options.root}, function (error, stdout, stderr) {
			grunt.log.write(stdout);
			grunt.log.writeln("Error code:" + error);
			next(error);
		});

	});
		

    // Default task.
    grunt.registerTask('default', [
    	'pub',
    	'copy:main',
        'gh-pages'
    ]);
};
