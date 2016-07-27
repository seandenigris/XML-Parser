initialization
on: aStringOrStream documentURI: aUri
	input := aStringOrStream.
	documentUri := aUri.
	configuration
		ifNil: [configuration := self configurationClass new].
	isInInternalSubset := false.
	isInCDataSection := false.