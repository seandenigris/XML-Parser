handling tokens
handleEndDocument
	self elementNester ensureNoElementsRemainOpen.
	self isValidating
		ifTrue: [self validator validateEndDocument].

	self saxHandler endDocument.