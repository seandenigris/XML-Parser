enumerating
descendantElementsDetect: aBlock
	^ self
		descendantElementsDetect: aBlock
		ifNone: [nil]