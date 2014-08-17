module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

  grunt.ports =
    livereload: 35729
    connect: 8000
    easymock: 8001
    specs: 9999

  grunt.appDir = 'app'
  grunt.publicDir = 'platforms/ios/www'
  grunt.testDir = 'specs'

  require('load-grunt-config')(grunt)

  grunt.registerTask 'development', [
    'build:development'
    'server:development'
  ]

  grunt.registerTask 'production', [
    'build:production'
    'server:production'
  ]

  grunt.registerTask 'default', [
    'shell:plugins'
    'development'
  ]

  grunt.registerTask 'test', [
    'coffeelint:development'
    'coffee:development'
    'karma'
  ]

  grunt.registerTask 'w', [
    'shell:webinspector'
  ]
