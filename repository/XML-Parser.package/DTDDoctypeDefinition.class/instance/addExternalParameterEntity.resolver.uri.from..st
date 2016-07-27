adding
addExternalParameterEntity: aName resolver: aResolver uri: aSystemUri from: aDocumentOrEntityUri
	self parameterEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveExternalParameterEntity: aName
				uri: aSystemUri
				from: aDocumentOrEntityUri]