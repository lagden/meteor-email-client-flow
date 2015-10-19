Meteor.publish('listaEmail', Emails.repository.lista);
Meteor.publish('lerEmail', emailId => Emails.repository.one(emailId));
