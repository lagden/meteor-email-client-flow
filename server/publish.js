function listaEmail(caption = false, settings = {}) {
	if (caption) {
		settings.label = caption;
	}
	return Emails.find(settings);
}

Meteor.publish('listaEmail', listaEmail);
Meteor.publish('lerEmail', emailId => Emails.find(emailId));
