accessing
elements
	^ elements ifNil: [elements := self newElements]