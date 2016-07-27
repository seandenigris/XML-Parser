accessing
nodes
	^ nodes ifNil: [
		(nodes := self nodeListClass new)
			addObserver: self;
			yourself]