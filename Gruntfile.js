var pngquant = require('imagemin-pngquant');
var mozjpeg = require('imagemin-mozjpeg');
//var gifsicle = require('imagemin-gifsicle');

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    uglify: {
      home: {
        src: [
          'assets/js/jquery-2.1.4.js',
          'assets/js/bootstrap.min.js',
          'assets/js/jquery.material-cards.js',
          'assets/js/<%= pkg.title %>.js'
        ],
        dest: 'assets/js/<%= pkg.title %>.min.js'
      },
      admin: {
        src: [
          'assets/js/jquery-2.1.4.js',
          'assets/js/bootstrap.min.js',
          'assets/js/ripple.js',
          'assets/js/<%= pkg.title %>.js'
        ],
        dest: 'assets/js/<%= pkg.title %>-admin.min.js'
      }
    },

    imagemin:{
      target: {
        options: {
          optimizationLevel: 3,
          progressive: true,
          use: [pngquant(), mozjpeg()]
        }, // options
        files: [{
          expand: true,
          cwd: 'assets/src_img/',
          src: ['**/*.{png,jpg,jpeg,gif,svg}'],
          dest: 'assets/imgs/'
        }] // files
      } // target
    }, // imagemin

    ftpush: {
      build: {
        auth: {
          host: 'ftp.rodrigom.tk',
          port: 21,
          authKey: 'key1'
        },
        src: './',
        dest: 'controle_lab',
        exclusions: [
          '**/.DS_Store',
          '**/Thumbs.db',
          'less',
          'assets/src_img/',
          '.git',
          'controle_lab.sql',
          'README.md',
          'node_modules',
          'grunt',
          'grunt.cmd',
          'package.json',
          'Gruntfile.js',
          '.ftppass',
          '.gitattributes',
          '.gitignore',
          'application/cache/*',
          'application/logs/*',
          '.grunt'
        ],
        keep: [
          'application/cache/*',
          'application/logs/*',
        ]
      }
    },
  });

  // Load the plugins.
  grunt.loadNpmTasks('grunt-ftpush');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-uglify');

  // Default task(s).
  grunt.registerTask('default', ['uglify', 'imagemin']);
  grunt.registerTask('ftp','ftpush');
  grunt.registerTask('img','imagemin');
};