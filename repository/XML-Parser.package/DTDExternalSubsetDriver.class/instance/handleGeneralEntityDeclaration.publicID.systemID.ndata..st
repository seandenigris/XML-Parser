handling tokens
handleGeneralEntityDeclaration: aName publicID: aPublicId systemID: aSystemId ndata: aNotation
	aNotation ifNotEmpty: [
		self dtd unparsedEntityAt: aName put: aNotation.
		^ self].

	self dtd
		generalEntityAt: aName
		put:
			(self externalEntityResolver
				resolveGeneralEntity: aName
				uri: aSystemId
				from: self documentURI).