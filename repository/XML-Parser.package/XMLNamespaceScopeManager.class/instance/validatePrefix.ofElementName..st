validation
validatePrefix: aPrefix ofElementName: anElementName
	self currentScope
		validatePrefix: aPrefix
		ofElementName: anElementName