instance creation
newForEncoding: anEncodingName
	^ (self classForEncoding: anEncodingName)
		ifNotNil: [:converterClass |
			converterClass new encodingName: anEncodingName]