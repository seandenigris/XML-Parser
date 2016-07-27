tokenizing
nextNonHTMLSectionOn: aWriteStream
	[streamReader atEnd or: [self atNonHTMLSectionEndTag]]
		whileFalse: [aWriteStream nextPut: streamReader next]