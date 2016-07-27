accessing
printPercentEncodedCharacter: aCharacter on: aStream
	| asciiValue |

	"only the ASCII range contains reserved chars"
	(asciiValue := aCharacter asciiValue) < 128
		ifTrue: [
			aStream nextPut: $%.
			asciiValue < 16
				ifTrue: [aStream nextPut: $0].
			"printOn:base: on GS shows the radix, so the three arg form is used instead"
			asciiValue
				printOn: aStream
				base: 16
				showRadix: false]
		ifFalse: [aStream nextPut: aCharacter]