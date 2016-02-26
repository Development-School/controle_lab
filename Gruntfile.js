var pngquant = require('imagemin-pngquant');
var mozjpeg = require('imagemin-mozjpeg');
//var gifsicle = require('imagemin-gifsicle');

module.exports = function(grunt) {

  // Load the plugins.
  require('load-grunt-tasks')(grunt);

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    bower:"bower_components",

    uglify: {
      home: {
        src: [
          '<%= bower %>/jquery/dist/jquery.js',
          '<%= bower %>/bootstrap-sass/assets/javascripts/bootstrap.js',
          '<%= bower %>/material-cards/js/jquery.material-cards.js',
          'assets/js/<%= pkg.title %>.js'
        ],
        dest: 'assets/js/<%= pkg.title %>.min.js'
      },
      admin: {
        src: [
          '<%= bower %>/jquery/dist/jquery.js',
          '<%= bower %>/bootstrap-sass/assets/javascripts/bootstrap.js',
          'assets/js/ripple.js',
          'assets/js/<%= pkg.title %>.js'
        ],
        dest: 'assets/js/<%= pkg.title %>-admin.min.js'
      }
    },

    sass: {
      options: {
        sourceMap: true
      },
      dist: {
        files: {
          'assets/css/<%= pkg.title %>.css': 'assets/sass/main.scss'
        }
      }
    },

    cssmin: {
      options: {
        shorthandCompacting: false,
        roundingPrecision: -1
      },
      home: {
        files: {
          'assets/css/<%= pkg.title %>-home.min.css':
          [
            'assets/css/<%= pkg.title %>.css',
            'assets/css/material-cards.css',
            'assets/css/style.css'
          ]
        }
      },
      admin: {
        files: {
          'assets/css/<%= pkg.title %>-admin.min.css':
          [
            'assets/css/<%= pkg.title %>.css',
            'assets/css/estilo.css'
          ]
        }
      }
    },

    bowercopy: {
      fonts:{
        options: {
          destPrefix: 'assets'
        },
        files: {
          'fonts':'font-awesome/fonts'
        }
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
          '<%= bower %>',
          'assets/sass',
          'assets/src_img/',
          '.git',
          'controle_lab.sql',
          'README.md',
          'node_modules',
          'grunt',
          'grunt.cmd',
          'package.json',
          'bower.json',
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

  // Default task(s).
  grunt.registerTask('default', ['uglify', 'sass', 'imagemin', 'bowercopy', 'cssmin']);
  grunt.registerTask('ftp','ftpush');
  grunt.registerTask('img','imagemin');
};