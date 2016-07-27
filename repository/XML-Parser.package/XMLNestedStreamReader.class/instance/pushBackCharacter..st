positioning
pushBackCharacter: aCharacter
	peekChar
		ifNil: [peekChar := aCharacter]
		ifNotNil: [
			self
				pushStream: (XMLSingleCharacterReadStream on: aCharacter)
				onClose: nil]