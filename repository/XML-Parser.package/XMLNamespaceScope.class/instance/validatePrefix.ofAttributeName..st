validation
validatePrefix: aPrefix ofAttributeName: anAttributeName
	aPrefix ifNil: [^ self].
	self validatePrefix: aPrefix of: anAttributeName, ' attribute'