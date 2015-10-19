// const tempoSleep = 2000;

function listaEmail(caption = false, settings = {}) {
	// Meteor._sleepForMs(tempoSleep);
	if (caption) {
		settings.label = caption;
	}
	return Emails.find(settings);
}

Meteor.publish('listaEmail', listaEmail);
Meteor.publish('lerEmail', emailId => Emails.find(emailId));
