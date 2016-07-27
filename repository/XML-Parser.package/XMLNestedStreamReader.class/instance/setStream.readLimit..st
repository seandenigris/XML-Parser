initialization
setStream: aStream readLimit: aReadLimit
	currentLineNumber := 1.
	normalizedLineEndingChar := LFCharacter.
	readLimit := aReadLimit.
	isEscapingQuotes := false.
	self stream: aStream.