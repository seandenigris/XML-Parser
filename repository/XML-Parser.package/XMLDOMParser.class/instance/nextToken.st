parsing
nextToken
	| currentTop |
	currentTop := self top.
	[self driver nextToken isNil
		or: [self top ~~ currentTop]] whileTrue.
	^entity