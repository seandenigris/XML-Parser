class initialization
initializePreferredClasses
	"a class var because it should be shared by all subclasses"
	(PreferredClasses := IdentitySet new)
		addAll: XMLUTFStreamConverter allSubclasses;
		add: XMLByteStreamConverter