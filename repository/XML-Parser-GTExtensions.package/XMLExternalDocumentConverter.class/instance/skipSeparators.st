private 
skipSeparators
	[self peek xmlParserIsSeparator]
		whileTrue: [self next]