accessing
percentOrPlusEncodeCharacter: aCharacter
	^ String streamContents: [:stream |
		self
			printPercentOrPlusEncodedCharacter: aCharacter
			on: stream]