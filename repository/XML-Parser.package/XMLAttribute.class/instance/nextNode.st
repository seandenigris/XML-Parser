accessing
nextNode
	^ self element ifNotNil: [:element | element attributeNodes after: self]