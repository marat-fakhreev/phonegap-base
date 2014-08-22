define [
  'marionette'
  'facades/session'
  'facades/event_aggregator'
  'facades/reqres'
  'views/layouts/layout'
  'views/layouts/header'
  'views/layouts/navigation'
  'views/layouts/landing'
  'views/login/login_view'
], (
  Marionette
  Session
  Vent
  ReqRes
  Layout
  HeaderLayout
  NavigationLayout
  LandingLayout
  LoginView
) ->

  class AppController extends Marionette.Controller
    initialize: ->
      @layout = new Layout
      @layout.render()
      @_bindEvents()
      @_renderLayout()

    _bindEvents: ->
      @listenTo Vent, 'session:create session:destroy', @_renderLayout

    _renderLayout: ->
      @layout.headerRegion.show(new HeaderLayout)
      @layout.navigationRegion.show(new NavigationLayout) if Session.isLoggedIn()
      @root()

    root: ->
      if Session.isLoggedIn()
        Vent.trigger('title:change', 'Landing')
        @layout.mainRegion.show(new LandingLayout)
      else
        Vent.trigger('title:change', 'Phonegap-base')
        @layout.mainRegion.show(new LoginView)

    someLink: ->
      Vent.trigger('title:change', 'Other Screen')
      console.log 'Show other screen'
