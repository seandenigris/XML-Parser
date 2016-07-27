initialization
on: aStringOrStream documentURI: aUri
	super
		on: aStringOrStream
		documentURI: aUri.

	nodeStack := OrderedCollection new: 10.