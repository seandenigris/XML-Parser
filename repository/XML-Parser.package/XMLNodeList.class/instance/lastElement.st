accessing
lastElement
	self reverseDo: [:each |
		each isElement
			ifTrue: [^ each]].
	^ nil.