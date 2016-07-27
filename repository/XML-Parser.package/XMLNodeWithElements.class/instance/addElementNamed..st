adding
addElementNamed: aName
	"adds and returns a new element with the specified name"

	^ self addNode: (self nodeFactory newElementNamed: aName)