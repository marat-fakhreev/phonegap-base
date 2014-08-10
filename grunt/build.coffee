module.exports = (grunt) ->
  grunt.registerTask 'build', (target) ->
    if target is 'development'
      grunt.task.run [
        'shell:bower'
        'clean:development'
        'copy:development'
        'jade:html'
        'jade:jst'
        'stylus:development'
        'coffee:development'
        'coffeelint:development'
        'jsonlint:development'
      ]
    else if target is 'production'
      grunt.task.run [
        'shell:bower'
        'clean:development'
        'copy:development'
        'jade:production'
        'jade:jst'
        'stylus:development'
        'coffee:development'
        'coffeelint:development'
        'jsonlint:development'
        'cssmin:production'
        'requirejs:production'
        'clean:production'
      ]
