define [
  'facades/ui_framework'
], (UI) ->

  class Notifications
    @alert: (message, callback) ->
      navigator.notification.alert(message, @onCallback(callback), 'GGR Fleet Manager', 'OK')

    @error: (message, callback) ->
      navigator.notification.alert(message, @onCallback(callback), 'Oops', 'OK')

    @confirm: (message, callback) ->
      navigator.notification.confirm(message, @onCallback(callback), 'GGR Fleet Manager', 'Yes, No')

    @prompt: (message, callback) ->
      UI.prompt(message, 'GGR Fleet Manager', (value) => @onCallback(callback, value))

    @promptAlert: (message) ->
      UI.alert(message, 'GGR Fleet Manager')

    @promptError: (message) ->
      UI.alert(message, 'Oops')

    @onCallback: (callback, value) ->
      if callback?
        if value?
          callback(value)
        else
          callback
      else
        null
