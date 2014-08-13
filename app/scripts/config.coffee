requirejs.config
  baseUrl: 'scripts'
  paths:
    'jquery': 'bower_components/jquery/dist/jquery'
    'underscore': 'bower_components/underscore/underscore'
    'backbone': 'bower_components/backbone/backbone'
    'backbone.routefilter': 'bower_components/backbone-route-filter/backbone-route-filter'
    'backbone.stickit': 'bower_components/backbone.stickit/backbone.stickit'
    'backbone-validation': 'bower_components/backbone-validation/dist/backbone-validation-amd'
    'backbone-nested-model': 'bower_components/backbone-nested-model/backbone-nested'
    'marionette': 'bower_components/marionette/lib/backbone.marionette'
    'moment': 'bower_components/moment/moment'
    'moment-timezone': 'bower_components/moment-timezone/builds/moment-timezone-with-data'
    'fastclick': 'bower_components/fastclick/lib/fastclick'

    'jquery.soap': 'bower_components/jquery.soap/jquery.soap'
    'xml2json': 'bower_components/jquery.soap/web/jquery.xml2json'
    #vendor
    'jade': 'vendor/scripts/runtime'
    'jquery-mobile': 'vendor/scripts/jquery.mobile.custom'
    'touchswipe': 'vendor/scripts/touchswipe'
  shim:
    'marionette':
      deps: [
        'backbone'
        'jquery.soap'
      ]
    'touchswipe':
      deps: ['jquery']
    'jquery.soap':
      deps: ['jquery', 'xml2json']
    'xml2json':
      deps: ['jquery']
    'templates':
      deps: ['jade']
