private
findTextConverterClassForEncoding: anEncoding
	^ (Smalltalk
		at: #TextConverter
		ifAbsent: [^ nil])
			defaultConverterClassForEncoding: anEncoding asLowercase