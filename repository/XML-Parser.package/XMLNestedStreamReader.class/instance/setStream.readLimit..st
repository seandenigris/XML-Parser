initialization
setStream: aStream readLimit: aReadLimit
	self stream: aStream.
	nestedStreams := OrderedCollection new: 5.
	currentLineNumber := 1.
	currentPosition := 0.
	currentLineStartPosition := 0.
	normalizedLineEndingChar := LFCharacter.
	readLimit := aReadLimit.
	isEscapingQuotes := false.