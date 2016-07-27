errors
errorExpectedLiteral: aString butGot: aCharacter at: aStringPosition
	| oldPosition receivedString |

	oldPosition := streamReader currentPosition.
	receivedString :=
		(aString
			copyReplaceFrom: aStringPosition
			to: aString size
			with:
				(aCharacter ifNil: ['']) asString,
				(streamReader next: aString size - aStringPosition)).

	"more accurately estimate where the error occured"
	streamReader
		currentPosition: oldPosition - aStringPosition + 1;
		currentLineNumber:
			streamReader currentLineNumber -
				(receivedString occurrencesOf: streamReader normalizedLineEndingChar).

	self
		errorExpectedLiteral: aString
		butGot: receivedString.