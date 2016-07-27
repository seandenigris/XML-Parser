adding
addExternalParameterEntity: aName resolver: aResolver uri: aSystemUri from: aDocumentOrEntityUri
	self parameterEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveParameterEntity: aName
				uri: aSystemUri
				from: aDocumentOrEntityUri]