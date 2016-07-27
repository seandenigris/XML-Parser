accessing
nodes
	^ nodes ifNil: [nodes := self nodeListClass observer: self]