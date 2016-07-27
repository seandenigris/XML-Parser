initialize
setAttributes: aDictionary
	self attributes removeAll.
	aDictionary ifNil: [^ self].
	aDictionary keysAndValuesDo: [:key :value | self at: key put: value].