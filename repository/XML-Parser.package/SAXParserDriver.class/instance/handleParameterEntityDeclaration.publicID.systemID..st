handling - dtd
handleParameterEntityDeclaration: aName publicID: aPublicID systemID: aSystemID
	self resolvesExternalEntities
		ifTrue: [
			self doctypeDefinition
				addExternalParameterEntity: aName
				resolver: self externalEntityResolver
				publicID: aPublicID
				systemID: aSystemID
				baseURI: self baseURI]
		ifFalse: [
			(self isValidating
				or: [self isStandalone])
				ifTrue: [
					self doctypeDefinition
						addUnresolvableExternalParameterEntity: aName]].

	self saxHandler
		parameterEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID.