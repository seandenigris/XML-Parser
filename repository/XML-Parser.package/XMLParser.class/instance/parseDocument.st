parsing
parseDocument
	[self atEnd] whileFalse: [self parseToken]