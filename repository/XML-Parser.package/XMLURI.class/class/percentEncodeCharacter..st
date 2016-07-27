accessing
percentEncodeCharacter: aCharacter
	^ String streamContents: [:stream |
		self
			printPercentEncodedCharacter: aCharacter
			on: stream]