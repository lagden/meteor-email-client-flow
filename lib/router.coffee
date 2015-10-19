# actLista = ->
#   BlazeLayout.render 'applicationLayout', main: 'lista'
#   return

# actLer = ->
#   BlazeLayout.render 'applicationLayout',
#     main: 'lista'
#     ler: 'email'
#   return

inbox = FlowRouter.group prefix: '/inbox'
inbox.route '/'
inbox.route '/:_id'
# inbox.route '/', action: actLista
# inbox.route '/:_id', action: actLer

label = FlowRouter.group prefix: '/label'
label.route '/:nome'
label.route '/:nome/:_id'
# label.route '/:nome', action: actLista
# label.route '/:nome/:_id', action: actLer

FlowRouter.go '/inbox'
