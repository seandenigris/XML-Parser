parsing
nextEntityStart
	[self driver nextToken.
	self stack isEmpty] whileTrue.
	^entity