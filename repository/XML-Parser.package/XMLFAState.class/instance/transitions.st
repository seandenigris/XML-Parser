accessing
transitions
	^ transitions ifNil: [transitions := self transitionCollectionClass new]