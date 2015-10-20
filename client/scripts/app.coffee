Session.setDefault 'emailId', false

startupApp = ->
  svgLocalstorage('/images/sprite.svg', '0.1.1')
  return

formatDate = (date, useDateString = "false") ->
  dateStr = date.toDateString()
  if useDateString == "true"
    dateStr
  else
    sd = dateStr.split ' '
    "#{sd[2]} #{sd[1]}"

lowerCase = (s) ->
  s.toLowerCase()

resume = (s, words) ->
  arr = s.split ' '
  narr = arr.slice(0, words)
  "#{narr.join(' ')}..."

delayCalc = (v) ->
  v * 200

Meteor.startup startupApp
Template.registerHelper 'lowerCase', lowerCase
Template.registerHelper 'formatDate', formatDate
Template.registerHelper 'resume', resume
Template.registerHelper 'delayCalc', delayCalc
