streaming
skipSeparators
	"inlined peek"
	[(peekChar ifNil: [peekChar := self basicNext]) notNil
		and: [SeparatorCharacters includes: peekChar]]
		whileTrue: [self next].