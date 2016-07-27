enumerating
descendantNodesDetect: aBlock ifNone: anExceptionBlock
	self descendantNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.