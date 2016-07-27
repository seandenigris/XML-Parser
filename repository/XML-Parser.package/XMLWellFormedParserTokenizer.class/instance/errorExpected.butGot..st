errors
errorExpected: anExpectedCharacterOrString butGot: aReceivedCharacterOrString
	self errorExpected:
		('{1} but got "{2}"' format:
			(Array
				with: anExpectedCharacterOrString asString
				with: (aReceivedCharacterOrString ifNil: ['']) asString))