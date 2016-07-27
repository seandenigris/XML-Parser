accessing
parserClass
	^ parserClass ifNil: [parserClass := XMLDOMParser]