initialization
setAttributes: aDictionary
	self attributeList removeAll.
	aDictionary isEmptyOrNil ifTrue: [^ self].
	aDictionary keysAndValuesDo: [:key :value |
		self attributeList
			addName: key
			value: value
			scope: self scope].