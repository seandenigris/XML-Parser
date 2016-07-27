handling - dtd
handleParameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self doctypeDefinition
		addExternalParameterEntity: aName
		resolver: self externalEntityResolver
		publicID: aPublicID
		systemID: aSystemID
		from: self baseURI