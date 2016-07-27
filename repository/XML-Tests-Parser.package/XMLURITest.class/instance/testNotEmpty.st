tests
testNotEmpty
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		each notEmpty
			ifTrue: [self assert: uri notEmpty]
			ifFalse: [self deny: uri notEmpty]]