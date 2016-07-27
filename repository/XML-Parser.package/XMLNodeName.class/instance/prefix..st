accessing
prefix: aPrefix
	self changeWith: [self setPrefix: aPrefix localPart: self localPart]