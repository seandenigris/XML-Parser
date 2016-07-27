validation
validatePrefix: aPrefix
	self isValidating ifFalse: [^ self].

	(self isMappedPrefix: aPrefix)
		ifFalse: [self errorUnmappedPrefix: aPrefix].