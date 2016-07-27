*XML-Parser-GemstoneCompatibility
isXMLNSAttributeName
	^ (self beginsWith: 'xmlns')
		and: [self size = 5 "'xmlns' size"
			or: [(self at: 6) == $:]]