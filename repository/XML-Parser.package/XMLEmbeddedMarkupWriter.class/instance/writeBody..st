private
writeBody: aStringOrCollectionOrBlock
	isWritingBody := true.

	self embedValue: aStringOrCollectionOrBlock.
	self isActiveMarkupWriter
		ifFalse: [self writer flushMarkup].

	isWritingBody := false.