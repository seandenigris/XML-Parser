accessing
previousNode
	^ self hasParent ifTrue: [self parent nodeBefore: self]