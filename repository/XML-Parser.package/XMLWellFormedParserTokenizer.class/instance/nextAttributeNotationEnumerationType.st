tokenizing - dtd
nextAttributeNotationEnumerationType
	writeStream
		reset;
		nextPutAll:
			(self
				expectNextAll: 'NOTATION'
				startingAt: 2). "the 'N' was already read"
	self
		expectSeparatorsInDeclaration;
		expectNext: $(.
	writeStream nextPutAll: ' ('.

	self
		skipSeparatorsInDeclaration;
		nextNameOnWriteStream;
		skipSeparatorsInDeclaration;
		nextNameListOnWriteStream.

	^ writeStream contents.