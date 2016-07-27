handling tokens
handleEndTag: anElementName 
	((self elementNester isVoidElement: anElementName)
		or: [(self elementNester hasOpenElement: anElementName) not])
		ifTrue: [^ self].

	self
		endElements: (self elementNester elementsToEndBeforeEnding: anElementName);
		endElement: anElementName.