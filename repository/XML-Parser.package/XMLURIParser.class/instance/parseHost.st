parsing
parseHost
	^ (uriStream position > 0
		or: [self parseDoubleSlashOrReset])
		ifTrue: [(self parseUpToAnyNotSkipping: '/?#') asLowercase]
		ifFalse: [''].