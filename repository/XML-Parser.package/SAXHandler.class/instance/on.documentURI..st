initialization
on: aStringOrStream documentURI: aUri
	input := aStringOrStream.
	documentUri := aUri.
	configuration
		ifNil: [self configuration: self configurationClass new].
	isInInternalSubset := false.
	isInCDataSection := false.