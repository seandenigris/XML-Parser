instance creation
textConverterForEncoding: anEncoding
	^ TextConverterCache
		at: anEncoding
		ifAbsentPut: [
			(Smalltalk at: #TextConverter)
				defaultConverterClassForEncoding: anEncoding asLowercase]