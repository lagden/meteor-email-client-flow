Template.email.helpers
  dados: ->
    emailId = FlowRouter.getParam '_id'
    Emails.findOne emailId
