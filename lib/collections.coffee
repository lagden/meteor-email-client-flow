@Emails = new Mongo.Collection 'emails'

Meteor.methods
  setStarred: (emailID, setStarred) ->
    Emails.update emailID, $set:
      starred: setStarred
    return
