accessing
attributeNodes
	^ attributes ifNil: [
		(attributes := XMLAttributeList new)
			addObserver: self;
			yourself]