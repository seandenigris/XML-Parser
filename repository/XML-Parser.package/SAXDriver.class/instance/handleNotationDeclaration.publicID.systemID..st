handling tokens
handleNotationDeclaration: aName publicID: aPublicId systemID: aSystemId
	self isValidating
		ifTrue: [self dtd addNotation: aName].

	self saxHandler
		notationDeclaration: aName
		publicID: aPublicId
		systemID: aSystemId.