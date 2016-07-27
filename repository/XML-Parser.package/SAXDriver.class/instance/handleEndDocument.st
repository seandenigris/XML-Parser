handling tokens
handleEndDocument
	self openTags hasOpenTags
		ifTrue: [self notWellFormedError: 'Unclosed tags: ', self openTags printString].
	self saxHandler endDocument