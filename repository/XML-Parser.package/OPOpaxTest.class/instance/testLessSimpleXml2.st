testing
testLessSimpleXml2

	| rootElement xmlDocument root test1RootElement |
	root := XMLDOMParser parseDocumentFrom: self lessSimpleXmlSample readStream.

	self assert: (root isMemberOf:  XMLDocument ).
	self assert: root elements size = 1.
	
	test1RootElement := root elements first.
	
	self assert: (test1RootElement isMemberOf: XMLElement).
	self assert: test1RootElement tag = 'Test1'.
	self assert: test1RootElement elements size = 2.
	self assert: (test1RootElement elements first isMemberOf: OPTest1Element).
	self assert: (test1RootElement children last isMemberOf: OPTest2Element).
	self assert: test1RootElement elements first tag = 'Test1'.
	self assert: test1RootElement elements last tag = 'Test2'.
	self assert: root allChildren size = 4