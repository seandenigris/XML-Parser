initialization
on: aStringOrStream documentURI: aURI
	super
		on: aStringOrStream
		documentURI: aURI.

	nodeStack := OrderedCollection new: 10.