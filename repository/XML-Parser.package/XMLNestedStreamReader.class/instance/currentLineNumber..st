accessing
currentLineNumber: aLineNumber
	currentLineNumber = aLineNumber
		ifFalse: [
			currentLineNumber := aLineNumber.
			currentLineStartPosition := nil].