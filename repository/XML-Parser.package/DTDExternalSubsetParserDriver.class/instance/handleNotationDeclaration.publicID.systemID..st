handling - dtd
handleNotationDeclaration: aName publicID: aPublicID systemID: aSystemID
	self isValidating
		ifTrue: [
			self doctypeDefinition unparsedEntityValidator
				validateNotation: aName].
	self doctypeDefinition addNotation: aName.