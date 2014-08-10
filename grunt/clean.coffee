module.exports = (grunt) ->
  development: [
    '<%= grunt.publicDir %>/**/*'
    '!<%= grunt.publicDir %>/plugins'
    '!<%= grunt.publicDir %>/plugins/**/*'
    '!<%= grunt.publicDir %>/cordova.js'
    '!<%= grunt.publicDir %>/cordova_plugins.js'
    'access_logs.db'
  ]
  production: [
    '<%= grunt.publicDir %>/scripts'
  ]
