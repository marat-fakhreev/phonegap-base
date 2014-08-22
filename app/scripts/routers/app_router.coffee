define [
  'marionette'
  'facades/event_aggregator'
  'backbone.routefilter'
], (Marionette, Vent) ->

  class AppRouter extends Marionette.AppRouter
    appRoutes:
      '': 'root'
      'some_link': 'someLink'

    initialize: ->
      @listenTo Vent, 'session:create session:destroy', @onRedirectToRoot

    onRoute: (route) ->
      Vent.trigger('navigation:hide')

    onRedirectToRoot: ->
      @navigate('', trigger: false)
