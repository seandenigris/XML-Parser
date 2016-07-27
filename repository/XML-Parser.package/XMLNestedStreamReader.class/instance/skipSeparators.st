positioning
skipSeparators
	"nil understands isXMLSeparator so the result of the inlined #peek
	does not need to be tested for nil first"
	[(peekChar ifNil: [peekChar := self basicNext]) "inlined #peek"
		isXMLSeparator]
		whileTrue: [
			"inlined from #next"
			currentPosition := currentPosition + 1.
			readLimit ifNotNil: [
				currentPosition > readLimit
					ifTrue: [self errorReadLimitExceeded]].
			peekChar == normalizedLineEndingChar
				ifTrue: [
					currentLineNumber := currentLineNumber + 1.
					currentLineStartPosition := currentPosition].

			peekChar := nil]