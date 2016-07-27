accessing
previousNode
	^ self parent ifNotNil: [self parent nodeBefore: self]