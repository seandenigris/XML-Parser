handling tokens
handleParameterEntityDeclaration: aName publicID: aPublicId systemID: aSystemId
	self dtd
		addExternalParameterEntity: aName
		resolver: self externalEntityResolver
		uri: aSystemId
		from: self currentURI