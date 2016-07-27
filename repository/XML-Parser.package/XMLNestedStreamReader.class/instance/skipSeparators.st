streaming
skipSeparators
	"inlined peek"
	[(peekChar ifNil: [peekChar := self basicNext]) notNil
		and: [peekChar isSeparator]]
		whileTrue: [
			"inlined next"
			peekChar == normalizedLineEndingChar
				ifTrue: [currentLineNumber := currentLineNumber + 1].
			readLimit ifNotNil: [
				(readLimit := readLimit - 1) >= 0
					ifFalse: [self errorReadLimitExceeded]].
			peekChar := nil].