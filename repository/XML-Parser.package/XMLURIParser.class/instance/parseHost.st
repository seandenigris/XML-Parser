parsing
parseHost
	^ (uriStream xmlParserAtBeginning not
		or: [self parseDoubleSlashOrReset])
		ifTrue: [(self parseUpToAnyNotSkipping: ':/?#') asLowercase]
		ifFalse: [''].