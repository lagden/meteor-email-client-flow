function getIsLoading() {
	return FlowRouter.subsReady() ? '' : 'loading--open';
}

Template.loading.helpers({
	isLoading: getIsLoading
});
