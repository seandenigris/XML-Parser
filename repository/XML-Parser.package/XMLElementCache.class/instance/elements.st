accessing
elements
	^ elements ifNil: [elements := self newElementList]