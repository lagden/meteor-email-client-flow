function listaEmail(caption = false, settings = {}) {
	if (caption) {
		settings.label = caption;
	}
	return Emails.find(settings);
}

FindFromPublication.publish('listaEmail', listaEmail);
FindFromPublication.publish('lerEmail', emailId => Emails.find({_id: emailId}));
