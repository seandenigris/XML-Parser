private
findConverterClassForEncoding: anEncodingName
	^ (Smalltalk
		at: #TextConverter
		ifAbsent: [^ nil])
		defaultConverterClassForEncoding: anEncodingName asLowercase