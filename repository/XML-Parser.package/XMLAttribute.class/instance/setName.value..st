initialization
setName: aName value: aValue
	"This is used over 'self nodeName qualified:' to avoid sending a name-changed notification"
	(name := XMLNodeName new)
		setQualified: aName;
		addObserver: self.
	value := aValue.