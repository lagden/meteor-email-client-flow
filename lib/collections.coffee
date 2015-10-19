@Emails = new Mongo.Collection 'emails'

@Emails.repository =
  lista: (caption = false, settings = {}) ->
    settings.label = caption if caption
    Emails.find settings

  one: (emailId) ->
    Emails.find emailId, {limit: 1}

  starred: (emailID, setStarred) ->
    Emails.update emailID, $set:
      starred: setStarred
    return


Meteor.methods
  setStarred: Emails.repository.starred
