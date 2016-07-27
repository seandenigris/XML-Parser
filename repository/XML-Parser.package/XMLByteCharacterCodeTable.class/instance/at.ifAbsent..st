accessing
at: aCharacterCode ifAbsent: aBlock
	^ (codeTable at: aCharacterCode + 1) ifNil: aBlock