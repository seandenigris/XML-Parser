accessing
previousNode
	^ self element ifNotNil: [:element | element attributeNodes before: self]