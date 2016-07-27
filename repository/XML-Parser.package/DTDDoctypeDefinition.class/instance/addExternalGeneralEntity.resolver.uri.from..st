accessing
addExternalGeneralEntity: aName resolver: aResolver uri: aSystemUri from: aDocumentOrEntityUri
	self 
		generalEntityAt: aName
		put: (aResolver
			resolveGeneralEntity: aName
			uri: aSystemUri
			from: aDocumentOrEntityUri)