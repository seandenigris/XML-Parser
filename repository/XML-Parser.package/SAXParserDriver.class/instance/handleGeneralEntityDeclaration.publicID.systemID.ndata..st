handling - dtd
handleGeneralEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotation
	aNotation isEmpty
		ifTrue: [
			self resolvesExternalEntities
				ifTrue: [
					self doctypeDefinition
						addExternalGeneralEntity: aName
						resolver: self externalEntityResolver
						publicID: aPublicID
						systemID: aSystemID
						baseURI: self baseURI]
				ifFalse: [
					(self isValidating
						or: [self isStandalone])
						ifTrue: [
							self doctypeDefinition
								addUnresolvableExternalGeneralEntity: aName]]]
		ifFalse: [
			self doctypeDefinition
				addUnparsedEntity: aName
				ndata: aNotation].

	self saxHandler
		generalEntityDeclaration: aName
		publicID: aPublicID
		systemID: aSystemID
		ndata: aNotation.