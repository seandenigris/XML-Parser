errors
errorExpectedLiteral: anExpectedCharacterOrString butGot: anReceivedCharacterOrString
	self
		formatParseError: 'Expected "{1}" but got "{2}"' 
		with: anExpectedCharacterOrString
		with: (anReceivedCharacterOrString ifNil: [''])