streaming
streamEncoding: aCharacterEncodingName
	| converterClass textConverterBase |

	(stream respondsTo: #converter) ifFalse: [^ self].
	textConverterBase := Smalltalk at: #TextConverter ifAbsent: [^ self].
	converterClass :=
		textConverterBase defaultConverterClassForEncoding:
			aCharacterEncodingName asLowercase.
	converterClass
		ifNotNil: [stream converter: converterClass new].