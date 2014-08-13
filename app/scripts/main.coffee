require ['config'], ->
  require ['application'], (App) ->

    document.addEventListener('deviceready', (->
      App.start()

      # $.soap(
      #   url: 'http://www.webservicex.net/CurrencyConvertor.asmx?WSDL'
      #   method: 'ConversionRate'
      #   appendMethodToURL: false
      #   enableLogging: true
      #   data:
      #     FromCurrency: 'dollar'
      #     ToCurrency: 'euro'
      #   success: (response) ->
      #     console.log response
      #   error: (response) ->
      #     console.log response
      # )

      $.soap(
        url: 'http://wsf.cdyne.com/WeatherWS/Weather.asmx/'
        method: 'GetWeatherInformation'
        data: {}
        dataType: 'xml'
        success: (response) ->
          xml = response.toXML()
          json = response.toJSON()
          console.log xml
          console.log json
          debugger
        error: (response) ->
          console.log response
      )

    ), false)
