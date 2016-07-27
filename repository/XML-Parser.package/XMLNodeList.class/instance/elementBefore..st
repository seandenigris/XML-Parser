accessing
elementBefore: anElement
	| last |
	
	self elementsDo: [:each |
		each == anElement
			ifTrue: [^ last].
		last := each].
	^ nil.