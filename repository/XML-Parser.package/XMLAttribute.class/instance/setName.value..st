initialization
setName: aName value: aValue
	(name := XMLNodeName qualified: aName)
		addObserver: self.
	value := aValue.