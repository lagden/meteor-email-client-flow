Session.setDefault 'emailId', false

startupApp = ->
  svgLocalstorage('/images/sprite.svg', '0.1.1')
  return

formatDate = (date) ->
  sd = date.toDateString().split ' '
  "#{sd[2]} #{sd[1]}"

lowerCase = (s) ->
  s.toLowerCase()

Meteor.startup startupApp
Template.registerHelper 'lowerCase', lowerCase
Template.registerHelper 'formatDate', formatDate
