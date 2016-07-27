accessing
addContent: aString
	"Adds a string or string node. If the last child node is already a string node,
	then the string gets concatenated to it."

	(self hasContents and: [self nodes last isText])
		ifTrue: [self nodes last addContent: aString]
		ifFalse: [self addNode: (XMLStringNode string: aString)]