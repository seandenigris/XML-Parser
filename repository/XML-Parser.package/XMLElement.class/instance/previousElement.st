accessing
previousElement
	^ self parent ifNotNil: [self parent elementBefore: self]