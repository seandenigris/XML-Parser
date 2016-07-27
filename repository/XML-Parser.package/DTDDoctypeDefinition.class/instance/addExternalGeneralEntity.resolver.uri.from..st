adding
addExternalGeneralEntity: aName resolver: aResolver uri: aSystemUri from: aDocumentOrEntityUri
	self generalEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveGeneralEntity: aName
				uri: aSystemUri
				from: aDocumentOrEntityUri]