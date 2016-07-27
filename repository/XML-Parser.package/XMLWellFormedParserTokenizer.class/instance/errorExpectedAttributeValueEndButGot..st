errors
errorExpectedAttributeValueEndButGot: aCharacter
	aCharacter == $<
		ifTrue: [self parseError: 'Attribute value contains illegal "<" character']
		ifFalse: [self errorExpected: 'end of quoted attribute value']