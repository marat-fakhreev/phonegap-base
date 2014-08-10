define ->

  class Settings
    # set global envorinment for API
    ENVIRONMENT = 'development'

    local =
      port: 8001
      url: 'http://10.0.0.171'
      api: 'api'

    development =
      port: ''
      url: 'https://staging.gogreenride.com'
      api: 'api/v2'

    production =
      port: ''
      url: 'https://gogreenride.com'
      api: 'api/v2'

    @getUrl: ->
      settings = @_setSettings()

      if ENVIRONMENT is 'local'
        url = "#{settings.url}:#{settings.port}/#{settings.api}"
      else
        url = "#{settings.url}/#{settings.api}"

    @_setSettings: ->
      if ENVIRONMENT is 'local'
        local
      else if ENVIRONMENT is 'development'
        development
      else if ENVIRONMENT is 'production'
        production
