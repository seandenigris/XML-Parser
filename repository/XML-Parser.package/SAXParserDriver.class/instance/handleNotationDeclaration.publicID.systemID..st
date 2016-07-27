handling - dtd
handleNotationDeclaration: aName publicID: aPublicID systemID: aSystemID
	self isValidating
		ifTrue: [
			self doctypeDefinition unparsedEntityValidator
				validateNotationDeclaration: aName].
	self doctypeDefinition addNotation: aName.

	self saxHandler
		notationDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.