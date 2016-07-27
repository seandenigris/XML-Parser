accessing
firstElement
	^ self
		detect: [:each | each isElement]
		ifNone: [nil]