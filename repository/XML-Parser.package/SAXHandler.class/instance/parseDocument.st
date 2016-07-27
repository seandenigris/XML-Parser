parsing
parseDocument
	self startDocument.
	[self driver nextToken isNil or: [self eod]] whileFalse.

	"Result of parsing"
	^ self.