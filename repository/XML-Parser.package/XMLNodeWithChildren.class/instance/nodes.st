accessing
nodes
	^ nodes ifNil: [
		(nodes := self nodesClass new)
			addObserver: self;
			yourself]