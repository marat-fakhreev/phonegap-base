module.exports = ->
  bower:
    options:
      stdout: true
    command:
      'bower install'

  webinspector:
    options:
      stdout: true
    command:
      'sh bin/webinspector.sh'
