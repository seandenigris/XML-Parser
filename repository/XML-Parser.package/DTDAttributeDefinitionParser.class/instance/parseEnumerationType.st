parsing
parseEnumerationType
	^ (DTDEnumerationListParser on:
		((self isNotationEnumeration: type)
			ifTrue: [type copyAfter: Character space]
			ifFalse: [type])) parse