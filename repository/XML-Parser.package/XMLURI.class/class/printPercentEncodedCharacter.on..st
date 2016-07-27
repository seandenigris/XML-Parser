accessing
printPercentEncodedCharacter: aCharacter on: aStream
	| asciiValue |

	(asciiValue := aCharacter asciiValue) < 128
		ifTrue: [
			aStream nextPut: $%.
			asciiValue < 16
				ifTrue: [aStream nextPut: $0].
			asciiValue
				printOn: aStream
				base: 16]
		ifFalse: [aStream nextPut: aCharacter]