handling - dtd
handleParameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self doctypeDefinition
		addExternalParameterEntity: aName
		resolver: self externalEntityResolver
		publicID: aPublicID
		systemID: aSystemID
		baseURI: self baseURI