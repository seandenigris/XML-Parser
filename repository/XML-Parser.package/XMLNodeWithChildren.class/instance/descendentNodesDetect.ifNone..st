deprecated
descendentNodesDetect: aBlock ifNone: anExceptionBlock
	"less common alternate spelling"
	^ self
		descendantNodesDetect: aBlock
		ifNone: anExceptionBlock