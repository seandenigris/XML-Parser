adding
addExternalGeneralEntity: aName resolver: aResolver publicID: aPublicID systemID: aSystemID from: aSourceURIString
	self generalEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveExternalGeneralEntity: aName
				publicID: aPublicID
				systemID: aSystemID
				baseURI: aSourceURIString]