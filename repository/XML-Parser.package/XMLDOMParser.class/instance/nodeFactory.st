accessing
nodeFactory
	^ nodeFactory ifNil: [nodeFactory := XMLNodeFactory new]