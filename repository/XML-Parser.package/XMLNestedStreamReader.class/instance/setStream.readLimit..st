initialization
setStream: aStream readLimit: aReadLimit
	self stream: aStream.
	nestedStreams := OrderedCollection new: 5.
	currentLineNumber := 1.
	currentPosition := 0.
	currentLineStartPosition := 0.
	readLimit := aReadLimit.
	normalizedLineEndingChar := LFCharacter.
	isEscapingQuotes := false.