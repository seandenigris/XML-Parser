enumerating
ancestorNodesDetect: aBlock ifNone: anExceptionBlock
	self ancestorNodesDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.