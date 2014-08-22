define [
  'marionette'
  'facades/session'
  'views/abstract/form_view'
  'facades/notifications'
  'templates'
], (
  Marionette
  Session
  AbstractFormView
  Notifications
) ->

  class LoginView extends AbstractFormView
    template: JST['templates/login/login']

    model: Session.currentUser()

    hammerEvents:
      'tap .submit-button': 'onFormSubmit'

    bindings:
      'input[name="name"]':
        observe: 'username'
        updateView: false
        setOptions:
          validate: true
      'input[name="password"]':
        observe: 'password'
        updateView: false
        setOptions:
          validate: true

    onFormSubmit: (event) ->
      event.preventDefault()

      if @model.isValid()
        Session.create()
      else
        Notifications.error('Please fill all the fields')
