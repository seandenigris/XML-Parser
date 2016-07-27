accessing
addExternalParameterEntity: aName resolver: aResolver uri: aSystemUri from: aDocumentOrEntityUri
	self 
		parameterEntityAt: aName
		put: (aResolver
			resolveParameterEntity: aName
			uri: aSystemUri
			from: aDocumentOrEntityUri)