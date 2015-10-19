inbox = FlowRouter.group prefix: '/inbox'
inbox.route '/'
inbox.route '/:_id'

label = FlowRouter.group prefix: '/label'
label.route '/:nome'
label.route '/:nome/:_id'

FlowRouter.go '/inbox'
