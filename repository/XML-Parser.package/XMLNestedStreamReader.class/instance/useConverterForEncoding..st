streaming
useConverterForEncoding: anEncodingName
	| converterClass |

	converterClass :=
		(Smalltalk
			at: #TextConverter
			ifAbsent: [^ self])
				defaultConverterClassForEncoding: anEncodingName asLowercase.
		
	converterClass
		ifNotNil: [stream converter: converterClass new].