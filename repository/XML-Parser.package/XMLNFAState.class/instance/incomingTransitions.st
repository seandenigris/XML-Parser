accessing
incomingTransitions
	^ incomingTransitions ifNil: [incomingTransitions := OrderedCollection new]