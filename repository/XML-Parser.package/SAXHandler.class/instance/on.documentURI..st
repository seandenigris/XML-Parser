initialization
on: aStringOrStream documentURI: aURI
	input := aStringOrStream.
	documentURI := aURI.
	configuration
		ifNil: [self configuration: self configurationClass new].
	isInContent := false.
	isInCDataSection := false.