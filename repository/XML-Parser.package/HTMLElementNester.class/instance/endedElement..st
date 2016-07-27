checking
endedElement: anElementName
	self openElements removeLast.
	self openElementsByName
		at: anElementName
		put:
			((self openElementsByName
				at: anElementName
				ifAbsent: [1]) - 1 max: 0).