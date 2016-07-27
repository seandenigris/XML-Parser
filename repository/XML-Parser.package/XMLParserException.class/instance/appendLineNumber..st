appending
appendLineNumber: aLineNumber
	self messageText:
		(self messageText ifNil: ['']),
			' (line ', aLineNumber printString, ')'