# Template.lista.onCreated ->
#   @autorun =>
#     @subscribe 'listaEmail', FlowRouter.getParam('nome')
#     return

Template.lista.onCreated ->
  @subscribe 'listaEmail', FlowRouter.getParam('nome')
  return

Template.lista.helpers
  lista: ->
    Emails.repository.lista FlowRouter.getParam 'nome'

  path: ->
    nome = FlowRouter.getParam 'nome'
    path = if nome then "label/#{nome}" else 'inbox'

  starred: ->
    if @starred then 'starred' else ''


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
