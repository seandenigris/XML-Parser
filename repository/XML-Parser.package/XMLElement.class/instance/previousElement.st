accessing
previousElement
	^ self hasParent ifTrue: [self parent elementBefore: self]