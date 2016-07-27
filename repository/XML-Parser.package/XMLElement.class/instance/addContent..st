accessing
addContent: aStringOrStringNode
	"Adds a string or string node. If the last child node is already a string node,
	then contentString gets concatenated to it."

	(self hasContents and: [self nodes last isText])
		ifTrue: [self nodes last addContent: aStringOrStringNode]
		ifFalse: [self addNode: (XMLStringNode string: aStringOrStringNode)]