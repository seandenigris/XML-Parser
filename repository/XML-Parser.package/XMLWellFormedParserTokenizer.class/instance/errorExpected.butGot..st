errors
errorExpected: aDescription butGot: aCharacter
	self errorExpected:
		('{1} but got "{2}"' format:
			(Array
				with: aDescription
				with: (aCharacter ifNil: [''])))