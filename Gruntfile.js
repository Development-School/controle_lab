var pngquant = require('imagemin-pngquant');
var mozjpeg = require('imagemin-mozjpeg');
//var gifsicle = require('imagemin-gifsicle');

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

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

  // Default task(s).
  grunt.registerTask('ftp','ftpush');
  grunt.registerTask('img','imagemin');
};