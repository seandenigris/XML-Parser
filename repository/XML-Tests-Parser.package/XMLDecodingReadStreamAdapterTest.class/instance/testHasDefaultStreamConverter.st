tests
testHasDefaultStreamConverter
	self streamConverterClass == XMLUTF8StreamConverter
		ifTrue: [self assert: self newAdapter hasDefaultStreamConverter]
		ifFalse: [self deny: self newAdapter hasDefaultStreamConverter]