checking
startedElement: anElementName
	self openElements addLast: anElementName.
	self openElementsByName
		at: anElementName
		put:
			(self openElementsByName
				at: anElementName
				ifAbsent: [0]) + 1.