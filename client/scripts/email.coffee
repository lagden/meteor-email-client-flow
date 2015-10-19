Template.email.onCreated ->
  @subscribe 'lerEmail', FlowRouter.getParam('_id')
  return

# Template.email.helpers
#   email: ->
#     dados = Emails.findOne FlowRouter.getParam('_id')
#     if dados
#       return dados

#     Meteor.subscribe 'lerEmail', FlowRouter.getParam('_id')
#     return

Template.email.helpers
  email: ->
    Emails.findOne FlowRouter.getParam('_id')
