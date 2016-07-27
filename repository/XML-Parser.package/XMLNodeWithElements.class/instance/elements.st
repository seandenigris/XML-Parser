accessing
elements
	^ elements ifNil: [elements := self newElementCollection]