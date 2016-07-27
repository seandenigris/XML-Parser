enumerating
descendantNodesDetect: aBlock
	^ self
		descendantNodesDetect: aBlock
		ifNone: [nil]