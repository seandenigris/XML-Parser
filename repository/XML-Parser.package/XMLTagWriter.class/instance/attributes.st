accessing
attributes
	^ attributes ifNil: [attributes := XMLOrderPreservingDictionary new]