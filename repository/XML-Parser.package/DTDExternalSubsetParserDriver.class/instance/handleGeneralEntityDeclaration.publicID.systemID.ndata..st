handling - dtd
handleGeneralEntityDeclaration: aName publicID: aPublicID systemID: aSystemID ndata: aNotation
	aNotation isEmpty
		ifTrue: [	
			self doctypeDefinition
				addExternalGeneralEntity: aName
				resolver: self externalEntityResolver
				uri: aSystemID
				from: self currentURI]
		ifFalse: [
			self doctypeDefinition
				addUnparsedEntity: aName
				ndata: aNotation]