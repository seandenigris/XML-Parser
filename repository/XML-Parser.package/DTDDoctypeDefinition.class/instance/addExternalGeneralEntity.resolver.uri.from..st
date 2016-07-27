adding
addExternalGeneralEntity: aName resolver: aResolver uri: aSystemUri from: aDocumentOrEntityUri
	self generalEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveExternalGeneralEntity: aName
				uri: aSystemUri
				from: aDocumentOrEntityUri]