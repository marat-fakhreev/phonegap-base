define [
  'marionette'
  'application'
  'facades/session'
  'facades/event_aggregator'
  'facades/reqres'
], (
  Marionette
  App
  Session
  Vent
  ReqRes
) ->

  class AppController extends Marionette.Controller
    initialize: ->
      @_bindEvents()

    _bindEvents: ->
      @listenTo Vent, 'session:create session:destroy', @root

    root: ->
      if Session.isLoggedIn()
        Vent.trigger('title:change', 'Menu')

