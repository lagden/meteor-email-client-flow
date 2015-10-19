Template.lista.helpers
  lista: ->
    nome = FlowRouter.getParam 'nome'
    settings = {}
    if nome
      settings.label = nome

    # console.log 'FlowRouter.subsReady ----->', FlowRouter.subsReady()
    # console.log 'settings ----->', settings

    Emails.find {}, {sort: {nome: 1}}
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
