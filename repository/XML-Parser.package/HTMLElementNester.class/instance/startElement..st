checking
startElement: anElementName
	self openElementsByName
		at: anElementName
		put:
			(self openElementsByName
				at: anElementName
				ifAbsent: [0]) + 1.

	super startElement: anElementName.