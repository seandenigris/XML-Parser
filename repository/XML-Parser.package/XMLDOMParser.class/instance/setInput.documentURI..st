initialization
setInput: aStringOrStream documentURI: aUri
	super
		setInput: aStringOrStream
		documentURI: aUri.

	nodeStack := OrderedCollection new: 10.