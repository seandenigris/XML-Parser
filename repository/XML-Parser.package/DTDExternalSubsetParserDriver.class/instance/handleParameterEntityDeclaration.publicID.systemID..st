handling tokens
handleParameterEntityDeclaration: aName publicID: aPublicId systemID: aSystemId
	self doctypeDefinition
		addExternalParameterEntity: aName
		resolver: self externalEntityResolver
		uri: aSystemId
		from: self currentURI