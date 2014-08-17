module.exports = ->
  install:
    options:
      stdout: true
    command: [
      'bower install',
      'sh bin/phonegap_plugins.sh'
    ].join('&&')

  webinspector:
    options:
      stdout: true
    command:
      'sh bin/webinspector.sh'
