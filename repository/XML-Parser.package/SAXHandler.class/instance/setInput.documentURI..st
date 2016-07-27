initialization
setInput: aStringOrStream documentURI: aUri
	input := aStringOrStream.
	documentUri := aUri.
	configuration := self configurationClass new.
	isInInternalSubset := false.
	isInCDataSection := false.