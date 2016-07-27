accessing
printPercentOrPlusEncodedCharacter: aCharacter on: aStream
	aCharacter asciiValue = 32 "Character space asciiValue"
		ifTrue: [aStream nextPut: $+]
		ifFalse: [
			self
				printPercentEncodedCharacter: aCharacter
				on: aStream]