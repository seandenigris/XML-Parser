accessing
nextElement
	^ self hasParent ifTrue: [self parent elementAfter: self]