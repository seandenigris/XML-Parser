deprecated
descendentElementsDetect: aBlock ifNone: anExceptionBlock
	"less common alternate spelling"
	^ self
		descendantElementsDetect: aBlock
		ifNone: anExceptionBlock