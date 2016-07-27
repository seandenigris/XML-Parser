adding
addExternalParameterEntity: aName resolver: aResolver publicID: aPublicID systemID: aSystemID baseURI: aBaseURIString
	self parameterEntities
		at: aName
		ifAbsentPut: [
			DTDExternalParameterEntity
				name: aName
				resolver: aResolver
				publicID: aPublicID
				systemID: aSystemID
				baseURI: aBaseURIString]