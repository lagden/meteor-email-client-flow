inbox = FlowRouter.group prefix: '/inbox'

# http://app.com/inbox
inbox.route '/',
  subscriptions: ->
    @register 'inbox', Meteor.subscribe 'listaEmail'
    return
  action: ->
    BlazeLayout.render 'applicationLayout', main: 'lista'
    return

# http://app.com/inbox/:_id
inbox.route '/:_id',
  subscriptions: (params) ->
    @register 'inbox', Meteor.subscribe 'listaEmail'
    # @register 'read', Meteor.subscribe('lerEmail', params._id)
    return
  action: ->
    BlazeLayout.render 'applicationLayout',
      main: 'lista'
      ler: 'email'
    return

label = FlowRouter.group prefix: '/label'

# http://app.com/label/:nome
label.route '/:nome',
  subscriptions: (params) ->
    @register 'label', Meteor.subscribe('listaEmail', params.nome)
    return
  action: ->
    BlazeLayout.render 'applicationLayout', main: 'lista'
    return

# http://app.com/label/:nome/:_id
label.route '/:nome/:_id',
  subscriptions: (params) ->
    @register 'label', Meteor.subscribe('listaEmail', params.nome)
    # @register 'read', Meteor.subscribe('lerEmail', params._id)
    return
  action: ->
    BlazeLayout.render 'applicationLayout',
      main: 'lista'
      ler: 'email'
    return

FlowRouter.go '/inbox'
