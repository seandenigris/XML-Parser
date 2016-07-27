accessing
prefix: aPrefix
	self changeWith: [
		qualified := 
			aPrefix
				ifEmpty: [self localPart]
				ifNotEmpty: [aPrefix, ':', self localPart]]