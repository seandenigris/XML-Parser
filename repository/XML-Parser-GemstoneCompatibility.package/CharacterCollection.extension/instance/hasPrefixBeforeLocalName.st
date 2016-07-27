*XML-Parser-GemstoneCompatibility
hasPrefixBeforeLocalName
	^ (self
		indexOf: $:
		startingAt: 2) > 0