accessing
converterClassForEncoding: anEncodingName
	^ converterClassesByEncodingName
		at: anEncodingName
		ifAbsent: [
			converterClassesByEncodingName size >= self maxCachedConverterClasses
				ifTrue: [self clearCachedConverterClasses].
			converterClassesByEncodingName
				at: anEncodingName
				put: (self findConverterClassForEncoding: anEncodingName)]