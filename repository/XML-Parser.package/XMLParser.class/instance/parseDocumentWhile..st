parsing
parseDocumentWhile: aBlock
	[self atEnd not and: [aBlock value]] whileTrue: [self parseToken]