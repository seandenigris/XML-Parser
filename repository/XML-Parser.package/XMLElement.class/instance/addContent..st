accessing
addContent: aString
	"Adds a string or string node. If the last child node is already a string node,
	the characters being added are concatenated to it."

	(self hasContents and: [self lastNode isText])
		ifTrue: [self lastNode addContent: aString]
		ifFalse: [self addNode: (XMLString string: aString)]