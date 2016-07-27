testing
testXmlWithAttributes
	| parser root test1RootElement |
	parser := OPOpaxHandler on: self xmlWithAttributesSample readStream.
	parser startDocument.
	parser parseDocument.
	root := parser stack first.
	self assert: parser stack size = 1.
	self assert: (root isMemberOf: OPRootElement).
	self assert: root children size = 1.
	test1RootElement := root children first.
	self assert: test1RootElement attributes size = 1.
	self assert: (test1RootElement attributeNamed: 'name') = 'test1'.
	self assert: (test1RootElement isMemberOf: OPTest1Element).
	self assert: test1RootElement children size = 2.
	self assert: (test1RootElement children first isMemberOf: OPTest1Element).
	self assert: (test1RootElement children last isMemberOf: OPTest2Element)