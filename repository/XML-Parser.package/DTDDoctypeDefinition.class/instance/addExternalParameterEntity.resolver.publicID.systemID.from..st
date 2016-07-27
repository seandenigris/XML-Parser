adding
addExternalParameterEntity: aName resolver: aResolver publicID: aPublicID systemID: aSystemID from: aSourceURIString
	self parameterEntities
		at: aName
		ifAbsentPut: [
			aResolver
				resolveExternalParameterEntity: aName
				publicID: aPublicID
				systemID: aSystemID
				baseURI: aSourceURIString]