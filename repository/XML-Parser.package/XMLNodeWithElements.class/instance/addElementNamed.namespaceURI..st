adding
addElementNamed: aName namespaceURI: aURI
	"adds and returns a new element with the specified name and namespace
	URI"

	^ self addNode:
		(self nodeFactory
			newElementNamed: aName
			namespaceURI: aURI)