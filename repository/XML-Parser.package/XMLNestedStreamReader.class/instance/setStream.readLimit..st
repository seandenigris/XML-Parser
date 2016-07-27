initialization
setStream: aStream readLimit: aReadLimit
	currentLineNumber := 1.
	currentPosition := 0.
	currentLineStartPosition := 0.
	normalizedLineEndingChar := LFCharacter.
	readLimit := aReadLimit.
	isEscapingQuotes := false.
	self stream: aStream.