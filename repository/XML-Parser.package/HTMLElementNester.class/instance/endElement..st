checking
endElement: anElementName
	self openElementsByName
		at: anElementName
		put:
			((self openElementsByName
				at: anElementName
				ifAbsent: [1]) - 1 max: 0).

	super endElement: anElementName.