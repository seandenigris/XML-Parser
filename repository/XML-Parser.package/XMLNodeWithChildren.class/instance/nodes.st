accessing
nodes
	^ nodes ifNil: [nodes := XMLNodeList parent: self]