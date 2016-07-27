accessing
incomingTransitions
	^ incomingTransitions ifNil: [incomingTransitions := self transitionCollectionClass new]