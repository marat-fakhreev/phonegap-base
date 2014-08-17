module.exports = (grunt) ->
  staging:
    options:
      patterns: [
        match: 'environment'
        replacement: 'staging'
        # 'replacement:development' #for testing with mocks server
      ]
    files: [
      expand: true
      flatten: true
      src: ['<%= grunt.publicDir %>/scripts/settings/settings.js']
      dest: '<%= grunt.publicDir %>/scripts/settings/'
    ]
  production:
    options:
      patterns: [
        match: 'environment'
        replacement: 'production'
      ]
    files: [
      expand: true
      flatten: true
      src: ['<%= grunt.publicDir %>/scripts/settings/settings.js']
      dest: '<%= grunt.publicDir %>/scripts/settings/'
    ]
