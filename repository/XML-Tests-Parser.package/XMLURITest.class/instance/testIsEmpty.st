tests
testIsEmpty
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		each isEmpty
			ifTrue: [self assert: uri isEmpty]
			ifFalse: [self deny: uri isEmpty]]