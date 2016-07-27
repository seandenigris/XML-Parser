instance creation
newForEncoding: anEncodingName
	^ (self converterClassForEncoding: anEncodingName)
		ifNotNil: [:converterClass | converterClass new]	