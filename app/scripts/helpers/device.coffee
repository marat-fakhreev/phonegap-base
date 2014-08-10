define ->

  class DeviceHelper
    @hideKeyboard: ->
      document.activeElement.blur()
