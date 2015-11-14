//var pngquant = require('imagemin-pngquant');
//var mozjpeg = require('imagemin-mozjpeg');
//var gifsicle = require('imagemin-gifsicle');

module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

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
          'src_img',
          '.git',
          'bd_site_cmaisd.sql',
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

  // Default task(s).
  grunt.registerTask('ftp','ftpush');

};