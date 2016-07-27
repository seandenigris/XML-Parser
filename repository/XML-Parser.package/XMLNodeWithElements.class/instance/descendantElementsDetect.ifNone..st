enumerating
descendantElementsDetect: aBlock ifNone: anExceptionBlock
	self descendantElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [^ each]].
	^ anExceptionBlock value.