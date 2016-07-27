positioning
pushBackCharacter: aCharacter
	self
		pushStream: (XMLSingleCharacterReadStream on: aCharacter)
		onClose: nil