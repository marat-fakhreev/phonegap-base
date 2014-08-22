define ->

  class Settings
    # set global envorinment for API
    ENVIRONMENT = 'local'

    local =
      port: 8001
      url: 'http://localhost'
      api: 'api'

    development =
      port: ''
      url: 'https://example-development.com'
      api: 'api'

    production =
      port: ''
      url: 'https://example-production.com'
      api: 'api'

    @getUrl: ->
      settings = @_setSettings()
      url = "#{settings.url}:#{settings.port}/#{settings.api}"

    @_setSettings: ->
      if ENVIRONMENT is 'local'
        local
      else if ENVIRONMENT is 'development'
        development
      else if ENVIRONMENT is 'production'
        production
