accessing
addContent: aStringOrStringNode
	"Adds a string or string node. If the last child node is already a string node,
	the characters being added are concatenated to it."

	(self hasChildren and: [self lastNode isStringNode])
		ifTrue: [self lastNode addContent: aStringOrStringNode]
		ifFalse: [self addNode: aStringOrStringNode asXMLString]