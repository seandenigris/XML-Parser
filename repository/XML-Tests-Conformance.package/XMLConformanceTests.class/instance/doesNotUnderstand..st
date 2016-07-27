reflective operations
doesNotUnderstand: aMessage
	"for squeak"
	aMessage selector == #skip
		ifFalse: [super doesNotUnderstand: aMessage]