handling - dtd
handleNotationDeclaration: aName publicID: aPublicID systemID: aSystemID
	self isValidating
		ifTrue: [
			self doctypeDefinition unparsedEntityValidator
				validateNotationDeclaration: aName].
	self doctypeDefinition addNotation: aName.