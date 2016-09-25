/**
 * Created by Daniel on 18.07.2016.
 */
module.exports = function(grunt) {

    // Project configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        config: {
            mainColor: '#ffffff',
            node_modules: ['node_modules'],
            scripts: ['js'],
            scripts_build: ['../js'],
            styles: ['css'],
            styles_build: ['../css'],
            vendorStyles: ['css/bootstrap.min.css', 'css/uikit.css', 'css/sticky.css', 'css/accordion.css'],
            vendorScripts: ['js/bootstrap.min.js', 'js/uikit.js', 'js/sticky.js', 'js/accordion.js', 'js/lightbox.js']
        },
        uglify: {
            options: {
                banner: '/* <%= pkg.name %> <%= pkg.version %> <%= grunt.template.today("isoDateTime") %> - This line was generated automatically. Do not remove. */\n'
            },
            build: {
                files: {
                    '<%= config.scripts_build %>/scripts.min.js': ['<%= config.scripts %>/scripts.js'],
                    '<%= config.scripts_build %>/vendor.min.js': '<%= config.vendorScripts %>'
                }
            }
        },
        cssmin: {
            options: {
                banner: '/* <%= pkg.name %> <%= pkg.version %> <%= grunt.template.today("isoDateTime") %> - This line was generated automatically. Do not remove. */',
                keepSpecialComments: 0
            },
            build: {
                files: {
                    '<%= config.styles_build %>/theme.min.css': ['<%= config.styles %>/theme.css'],
                    '<%= config.styles_build %>/vendor.min.css': '<%= config.vendorStyles %>'
                }
            }
        },
        less: {
            develop: {
                options: {
                    paths: ['<%= config.styles %>']
                },
                files: {
                    '<%= config.styles %>/theme.css': '<%= config.styles %>/theme.less'
                }
            }
        },
        bowercopy: {
            options: {
                srcPrefix: 'bower_components',
                clean: true
            },
            vendor: {
                options: {
                    destPrefix: 'node_modules'
                },
                files: {
                    'uikit/css': 'uikit/css',
                    'uikit/fonts': 'uikit/fonts',
                    'uikit/js': 'uikit/js',
                    'uikit/less': 'uikit/less',
                }
            }
        },
        copy: {
            build: {
                files: [{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/bootstrap/dist/css/bootstrap.min.css',
                    dest: 'css'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/bootstrap/dist/js/bootstrap.min.js',
                    dest: 'js'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/js/uikit.js',
                    dest: 'js'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/css/uikit.css',
                    dest: 'css'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/js/components/sticky.js',
                    dest: 'js'
                }, {
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/css/components/accordion.css',
                    dest: 'css'
                }, {
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/js/components/accordion.js',
                    dest: 'js'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/css/components/sticky.css',
                    dest: 'css'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/js/components/lightbox.js',
                    dest: 'js'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/jquery/dist/jquery.min.js',
                    dest: '../js'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/fonts/FontAwesome.otf',
                    dest: '../fonts'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/fonts/fontawesome-webfont.ttf',
                    dest: '../fonts'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/fonts/fontawesome-webfont.woff',
                    dest: '../fonts'
                },{
                    expand: true,
                    filter: 'isFile',
                    flatten: true,
                    src: '<%= config.node_modules %>/uikit/fonts/fontawesome-webfont.woff2',
                    dest: '../fonts'
                }]
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-copy');
    grunt.loadNpmTasks('grunt-bowercopy');

    grunt.registerTask('default', ['']);
    grunt.registerTask('build', ['bowercopy', 'copy','uglify','less','cssmin']);
    grunt.registerTask('styles', ['less','cssmin']);
};