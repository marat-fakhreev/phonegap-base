define [
  'marionette'
  'application'
  'facades/event_aggregator'
  'backbone.routefilter'
], (Marionette, App, Vent) ->

  class AppRouter extends Marionette.AppRouter
    appRoutes:
      '': 'root'

    initialize: ->
      @listenTo Vent, 'session:create session:destroy', @onRedirectToRoot

    onRoute: (route) ->
      Vent.trigger('ui:show') if route isnt 'root'

    onRedirectToRoot: ->
      @navigate('', trigger: false)
