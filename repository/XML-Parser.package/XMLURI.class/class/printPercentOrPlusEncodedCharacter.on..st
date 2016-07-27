accessing
printPercentOrPlusEncodedCharacter: aCharacter on: aStream
	aCharacter asciiValue = 32
		ifTrue: [aStream nextPut: $+]
		ifFalse: [
			self
				printPercentEncodedCharacter: aCharacter
				on: aStream]