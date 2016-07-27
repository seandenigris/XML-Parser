parsing
parseHostAfterScheme: aScheme
	^ (aScheme notEmpty
		or: [self parseDoubleSlashOrReset])
		ifTrue: [(self parseUpToAnyNotSkipping: ':/?#') asLowercase]
		ifFalse: [''].