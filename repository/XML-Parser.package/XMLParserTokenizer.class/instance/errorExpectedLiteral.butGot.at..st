errors
errorExpectedLiteral: aCharacterOrString butGot: aCharacter at: aPosition
	| literal replacement |

	literal := aCharacterOrString asString.
	replacement := (aCharacter ifNil: ['']) asString.
	self
		formatParseError: 'Expected "{1}" but got "{2}"' 
		with: literal
		with:
			(literal
				copyReplaceFrom: aPosition
				to: literal size
				with: replacement).