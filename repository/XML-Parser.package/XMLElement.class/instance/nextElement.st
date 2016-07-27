accessing
nextElement
	^ self parent ifNotNil: [self parent elementAfter: self]