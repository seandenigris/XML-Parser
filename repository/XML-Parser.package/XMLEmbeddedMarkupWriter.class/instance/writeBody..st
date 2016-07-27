private
writeBody: aStringOrCollectionOrBlock
	isWritingBody := true.

	self embedValue: aStringOrCollectionOrBlock.
	self isActiveMarkupWriter
		ifFalse: [self writer write].

	isWritingBody := false.