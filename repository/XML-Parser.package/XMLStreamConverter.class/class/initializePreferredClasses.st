class initialization
initializePreferredClasses
	(PreferredClasses := IdentitySet new)
		addAll: XMLUTFStreamConverter allSubclasses;
		add: XMLByteStreamConverter