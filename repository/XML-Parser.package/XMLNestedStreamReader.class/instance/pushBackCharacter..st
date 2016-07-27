positioning
pushBackCharacter: aCharacter
	self
		pushBackStream: (XMLSingleCharacterReadStream on: aCharacter)
		onClose: nil