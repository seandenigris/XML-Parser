private
embedValue: aValue
	aValue ifNil: [^ self].

	aValue isString
		ifTrue: [^ self embedString: aValue].
	aValue isCollection
		ifTrue: [^ self embedCollection: aValue].
	aValue isBlock
		ifTrue: [^ self embedBlock: aValue].

	self error: 'Value object must be a string, collection or block'.