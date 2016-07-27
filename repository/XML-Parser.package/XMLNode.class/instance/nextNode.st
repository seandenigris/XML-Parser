accessing
nextNode
	^ self hasParent ifTrue: [self parent nodeAfter: self]