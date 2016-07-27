handling tokens
handleEndDocument
	self elementNester ensureNoElementsRemainOpen.
	self isValidating
		ifTrue: [self validator validateIDsAndReferences].

	self saxHandler endDocument.