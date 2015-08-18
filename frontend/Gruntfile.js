module.exports = function (grunt)
  {

    // Project configuration.
    grunt.initConfig(
    {
      pkg: grunt.file.readJSON('package.json'),

      // REQUIRE-JS ===================================/
      requirejs:
      {
        compile:
        {
          options:
          {
            baseUrl: "<%= pkg.name %>/js/",
            dir: "<%= pkg.build %>/js/",
            mainConfigFile: "<%= pkg.name %>/js/common.js",
            removeCombined: true,
            modules: [
              //Optimize the application files. jQuery is not
              //included since it is already in require-jquery.js
              {
                name: "common"
              }
            ]
          }
        }
      },

      // COMPASS ===================================/
      compass:
      {
        options:
        {
          require: ['compass-normalize', 'susy', 'breakpoint'],
          outputStyle: 'compressed',
          sassDir: '<%= pkg.name %>/sass',
          imagesDir: '<%= pkg.name %>/img',
          fontsDir: '<%= pkg.name %>/fonts',
          httpPath: "/",
          importPath: ["bower_components/awesomeness-boilerplate/app/sass", "bower_components/"],
          relativeAssets: true
        },
        build:
        {
          options:
          {
            outputStyle: 'compressed',
            cssDir: '<%= pkg.build %>/css'
          }
        },
        dev:
        {
          options:
          {
            cssDir: '<%= pkg.name %>/css'
          }
        }
      },

      // COPY ===================================/
      copy:
      {
        all:
        {
          files: [
            {
              expand: true,
              cwd: '<%= pkg.name %>/',
              src: ['fonts/**', 'img/**'],
              dest: '<%= pkg.build %>/'
            },
            // copy font awesome
            {
              expand: true,
              flatten: true,
              src: ['bower_components/font-awesome/fonts/*'],
              dest: '<%= pkg.build %>/fonts/'
            },
            // COPY require.js
            {
              expand: true,
              flatten: true,
              src: ['bower_components/requirejs/require.js'],
              dest: '<%= pkg.build %>/js/'
            }
          ]
        }
      },

      // CLEAN ===================================/
      clean:
      {
        swipe: ["<%= pkg.build %>"],
        unused: ["<%= pkg.build %>/js/modules", "<%= pkg.build %>/js/build.txt"]
      },

      // WATCH ===================================/
      watch:
      {
        build:
        {
          files: ['<%= pkg.name %>/sass/{,**/}*.{scss,sass}'],
          tasks: ['compass:build']
        },
        htmlmin:
        {
          files: ['<%= pkg.name %>/{,*/}*.html'],
          tasks: ['htmlmin']
        },
        javascript:
        {
          files: ['<%= pkg.name %>/{,*/}*.js'],
          tasks: ['requirejs']
        },
        bower:
        {
          files: ['bower_components/*'],
          tasks: ['build']
        },
        copy:
        {
          files: ['<%= pkg.name %>/fonts/**', '<%= pkg.name %>/img/**'],
          tasks: ['copy']
        }
      },

      // WATCHDEV ===================================/
      watchdev:
      {
        dev:
        {
          files: ['<%= pkg.name %>/sass/{,**/}*.{scss,sass}'],
          tasks: ['compass:dev']
        }
      },

      // BROWSER-SYNC ===================================/
      browserSync:
      {
        dev:
        {
          bsFiles:
          {
            src: ['<%= pkg.build %>/css/*.css', '<%= pkg.build %>/**/*.html']
          },
          options:
          {
            watchTask: true,
            server:
            {
              baseDir: "<%= pkg.build %>"
            }
          }
        }
      },

      // HTMLMIN ===================================/
      htmlmin:
      {
        dist:
        {
          options:
          {
            collapseBooleanAttributes: false,
            collapseWhitespace: true,
            removeAttributeQuotes: false,
            removeCommentsFromCDATA: false,
            removeEmptyAttributes: false,
            removeOptionalTags: false,
            removeRedundantAttributes: false,
            useShortDoctype: true
          },
          files: [
          {
            expand: true,
            cwd: '<%= pkg.name %>',
            src: '{,*/}*.html',
            dest: '<%= pkg.build %>'
          }]
        }
      }

    });



    // DEPENDENT PLUGINS =========================/

    // Load the plugin that provides the "require-js" task.
    grunt.loadNpmTasks('grunt-contrib-requirejs');
    // Load the plugin that provides the "compass" task.
    grunt.loadNpmTasks('grunt-contrib-compass');
    // Load the plugin that provides the "copy" task.
    grunt.loadNpmTasks('grunt-contrib-copy');
    // Load the plugin that provides the "clean" task.
    grunt.loadNpmTasks('grunt-contrib-clean');
    // Load the plugin that provides the "watch" task.
    grunt.loadNpmTasks('grunt-browser-sync');
    // Load the plugin that provides the "htmlmin" task.
    grunt.loadNpmTasks('grunt-contrib-htmlmin');
    // Load the plugin that provides the "watch" task.
    grunt.loadNpmTasks('grunt-contrib-watch');
    // Load watch a second time for the "watchdev" target
    grunt.renameTask('watch', 'watchdev');
    grunt.loadNpmTasks('grunt-contrib-watch');


    // TASKS =========================/
    
    // Build task
    grunt.registerTask('build', ['clean:swipe', 'requirejs:compile', 'compass:build', 'htmlmin', 'copy:all', 'clean:unused']);

    // Watch task
    grunt.registerTask('serve', ['build', 'browserSync', 'watch']);
    
    // Dev task
    // Compiles uncompressed CSS into PACKAGENAME/css
    grunt.registerTask('dev', ['compass:dev', 'watchdev']);
    

  };
