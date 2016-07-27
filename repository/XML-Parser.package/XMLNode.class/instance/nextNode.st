accessing
nextNode
	^ self parent ifNotNil: [self parent nodeAfter: self]