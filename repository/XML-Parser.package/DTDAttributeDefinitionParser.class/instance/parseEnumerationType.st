parsing
parseEnumerationType
	^ (((self isNotationEnumeration: type)
		ifTrue: [DTDNotationListParser]
		ifFalse: [DTDEnumerationListParser])
			on: type) parse