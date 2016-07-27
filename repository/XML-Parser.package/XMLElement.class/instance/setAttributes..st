initialization
setAttributes: aDictionaryOrArray
	self attributeNodes removeAll.
	aDictionaryOrArray isEmptyOrNil ifTrue: [^ self].
	self
		from: aDictionaryOrArray
		keysAndValuesDo: [:name :value |
			self attributeNodes addName: name value: value].