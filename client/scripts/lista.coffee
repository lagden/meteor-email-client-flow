# Template.lista.onCreated ->
#   @autorun =>
#     @subscribe 'listaEmail', FlowRouter.getParam('nome')
#     return

Template.lista.onCreated ->
  @subscribe 'listaEmail', FlowRouter.getParam('nome')
  return

Template.lista.helpers
  lista: ->
    collections = Emails.repository.lista FlowRouter.getParam 'nome'
    {
      collections: collections
      total: collections.count()
    }

  path: ->
    nome = FlowRouter.getParam 'nome'
    path = if nome then "label/#{nome}" else 'inbox'

  active: ->
    emailID = FlowRouter.getParam '_id'
    if @_id == emailID then 'active' else ''

  box: ->
    nome = FlowRouter.getParam 'nome'
    if nome then nome else 'Inbox'


Template.lista.events
  'click .emails__chk': (event) ->
    event.stopPropagation()
    console.log 'ID do email', event.target.value
    return

  'click .emails__icon--star': (event) ->
    event.stopPropagation()
    event.preventDefault()
    emailID = event.currentTarget.getAttribute 'data-email-id'
    Meteor.call 'setStarred', emailID, !@starred
    return
