Template.lista.onCreated ->
  @autorun =>
    @subscribe 'lerEmail', FlowRouter.getParam('_id')
    return

Template.email.helpers
  dados: ->
    Emails
      .findFromPublication('lerEmail', FlowRouter.getParam('_id'))
      .fetch()
    # Emails.findOne FlowRouter.getParam('_id')
