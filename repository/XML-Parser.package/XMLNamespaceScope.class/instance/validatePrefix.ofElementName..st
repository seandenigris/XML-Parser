validation
validatePrefix: aPrefix ofElementName: anElementName
	aPrefix ifNil: [^ self].
	self validatePrefix: aPrefix of: anElementName, ' element'