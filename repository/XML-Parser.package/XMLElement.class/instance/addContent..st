accessing
addContent: contentString
	"Adds a string or string node. If 'self nodes last' is already a string node, then
	contentString gets concatenated to it."

	(self hasContents and: [self nodes last isText])
		ifTrue: [self nodes last addContent: contentString]
		ifFalse: [self addNode: (XMLStringNode string: contentString)]