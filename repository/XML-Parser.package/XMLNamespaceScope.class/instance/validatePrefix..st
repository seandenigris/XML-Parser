validation
validatePrefix: aPrefix
	(self isMappedPrefix: aPrefix)
		ifFalse: [self errorUnmappedPrefix: aPrefix].