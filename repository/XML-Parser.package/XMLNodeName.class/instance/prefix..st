accessing
prefix: aPrefix
	qualified := 
		aPrefix
			ifEmpty: [self localPart]
			ifNotEmpty: [aPrefix, ':', self localPart]