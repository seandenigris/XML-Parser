streaming
skipSeparators
	"inlined peek"
	[(peekChar ifNil: [peekChar := self basicNext]) notNil
		and: [peekChar isSeparator]]
		whileTrue: [self next].