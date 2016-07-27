errors
errorExpectedLiteral: anExpectedLiteral butGot: aCharacter at: aPosition
	| literal replacement |

	literal := anExpectedLiteral asString.
	replacement := (aCharacter ifNil: ['']) asString.
	self errorExpected:
		('"{1}" but got "{2}"' format:
			(Array
				with: literal
				with:
					(literal
						copyReplaceFrom: aPosition
						to: literal size
						with: replacement)))