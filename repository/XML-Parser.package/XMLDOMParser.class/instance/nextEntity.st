parsing
nextEntity
	| currentTop |
	currentTop := self top.
	[self driver nextEntity isNil
		or: [self top ~~ currentTop]] whileTrue.
	^entity