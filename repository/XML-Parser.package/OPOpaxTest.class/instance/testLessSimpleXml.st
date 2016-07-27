testing
testLessSimpleXml
	| parser root test1RootElement |
	parser := OPOpaxHandler on: self lessSimpleXmlSample readStream.
	parser startDocument.
	parser parseDocument.
	
	root := parser stack first.
	
	self assert: parser stack size = 1.
	self assert: (root isMemberOf: OPRootElement).
	self assert: root children size = 1.
	
	test1RootElement := root children first.
	
	self assert: (test1RootElement isMemberOf: OPTest1Element).
	self assert: test1RootElement tag = 'Test1'.
	self assert: test1RootElement children size = 2.
	self assert: (test1RootElement children first isMemberOf: OPTest1Element).
	self assert: (test1RootElement children last isMemberOf: OPTest2Element).
	self assert: test1RootElement children first tag = 'Test1'.
	self assert: test1RootElement children last tag = 'Test2'.
	self assert: root allChildren size = 4