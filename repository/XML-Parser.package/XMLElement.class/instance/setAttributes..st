initialization
setAttributes: aDictionaryOrArray
	self attributeNodes removeAll.
	aDictionaryOrArray associationsDo: [:each |
		self attributeNodes
			addName: each key
			value: each value].